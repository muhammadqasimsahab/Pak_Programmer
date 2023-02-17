// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/constant/tabbar_dot_indicator.dart';
import 'package:pak_programmer/module/language_detailpage.dart/controller/get_language_category.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LanguageDetailPage extends StatefulWidget {
  String? name;
  LanguageDetailPage({super.key, this.name});

  @override
  State<LanguageDetailPage> createState() => _LanguageDetailPageState();
}

class _LanguageDetailPageState extends State<LanguageDetailPage>
    with SingleTickerProviderStateMixin {
  final Uri whatapps = Uri.parse("https://whatsapp.com");

  var phone = "+923351956201";
  void lunchWhatApp(number, message) async {
    String url = "whatapp://send&phone=$number&text$message";
    await canLaunchUrl(Uri.parse(url))
        ? lunchWhatApp("03351956201", "")
        : print("can't open whatapp");
  }
// List list_name = ["Basic", "Advance", "Q A","Code Practice","Project","Code Practice","Project"];

  SwiperController _scrollController = new SwiperController();

   TabController? tabController;

  final languageDetailController = Get.put(GetLanugaeDetailController());

  int currentindex2 = 0; // for swiper index initial

  int selectedIndex = 0; // for tab

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: selectedIndex,
      length: languageDetailController.productlist.length,
      vsync: this,
    );

    tabController!.addListener(() {
      setState(() {
        print(tabController!.index);
        _scrollController.move(tabController!.index);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: languageDetailController.productlist.length,
      child: Scaffold(
        backgroundColor: PColor.backgroundColor,

        floatingActionButton: FloatingActionButton(
          backgroundColor: PColor.secondryColor,
          onPressed: () {
            // lunchWhatApp("+923351956201", "hello");
            canLaunchUrl(whatapps);
          },
          child: Icon(Icons.whatsapp),
        ),
        appBar: AppBar(
          title: commonText(
            title: "widget.name",
            textSize: 13.sp,
            color: PColor.color_white,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: PColor.appColor,
        ),

        body: Column(
          children: [
            Container(
                color: PColor.appColor,
                // decoration: BoxDecoration(color: PColor.appColor),
                height: 8.h,
                child: Obx(() => DefaultTabController(
                      length: languageDetailController.productlist.length,
                      child: Container(
                        color: PColor.color_white,
                        constraints: BoxConstraints(maxHeight: 35.0),
                        child: TabBar(
                          onTap: (index) => _scrollController.move(index),

                          controller: tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.black,
                          labelColor: PColor.color_black,
                          unselectedLabelColor: Colors.grey,
                          // indicatorColor:  Color.fromRGBO(0, 202, 157, 1),
                          // labelColor: Colors.black,
                          labelStyle:
                              TextStyle(fontSize: 12, color: Colors.black),
                          // unselectedLabelColor: Colors.black,

                          tabs: List<Widget>.generate(
                              languageDetailController.productlist.length,
                              (int index) {
                            return Container(
                              child: Tab(text: "basic"),
                            );
                          }),
                        ),
                      ),
                    ))),
            // SizedBox(
            //   height: 30,
            // ),
            Obx(() => Expanded(
                  child: new Swiper(
                    onIndexChanged: (index) {
                      selectedIndex = index;
                      tabController!.animateTo(index);
                    },
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                        // tabController.animateTo(index);
                        currentindex2 = index;
                        print(index);
                      });
                    },
                    duration: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          color: PColor.color_white,
                          // margin: EdgeInsets.only(top: 0),
                          // height: 500,
                          width: double.infinity,
                          // color: Colors.blue,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                languageDetailController
                                    .productlist[index].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: PColor.appColor, fontSize: 30),
                              ),
                            ],
                          ));
                    },
                    itemCount: languageDetailController.productlist.length,
                  ),
                )),
          ],
        ),

        // const TabBarView(

        //   children:  [
        //   Center(
        //     child: Text(" Basic"),
        //   ),
        //   Center(
        //     child: Text(" Advance"),
        //   ),
        //   Center(
        //     child: Text(" Interview"),
        //   ),
        //   Center(
        //     child: Text(" Practice Code"),
        //   ),
        // ]),
      ),
    );
  }

  _launchWhatsapp() async {
    var whatsapp = "+923351956201";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
      await launchUrl(whatsappAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
  }
}

class CustomTabView extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder tabBuilder;
  final IndexedWidgetBuilder pageBuilder;
  final Widget? stub;
  final ValueChanged<int>? onPositionChange;
  final ValueChanged<double>? onScroll;
  final int? initPosition;

  CustomTabView({
    required this.itemCount,
    required this.tabBuilder,
    required this.pageBuilder,
    this.stub,
    this.onPositionChange,
    this.onScroll,
    this.initPosition,
  });

  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabView>
    with TickerProviderStateMixin {
  late TabController controller;
  late int _currentCount;
  late int _currentPosition;

  @override
  void initState() {
    _currentPosition = widget.initPosition ?? 0;
    controller = TabController(
      length: widget.itemCount,
      vsync: this,
      initialIndex: _currentPosition,
    );
    controller.addListener(onPositionChange);
    controller.animation!.addListener(onScroll);
    _currentCount = widget.itemCount;
    super.initState();
  }

  @override
  void didUpdateWidget(CustomTabView oldWidget) {
    if (_currentCount != widget.itemCount) {
      controller.animation!.removeListener(onScroll);
      controller.removeListener(onPositionChange);
      controller.dispose();

      if (widget.initPosition != null) {
        _currentPosition = widget.initPosition!;
      }

      if (_currentPosition > widget.itemCount - 1) {
        _currentPosition = widget.itemCount - 1;
        _currentPosition = _currentPosition < 0 ? 0 : _currentPosition;
        if (widget.onPositionChange is ValueChanged<int>) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              widget.onPositionChange!(_currentPosition);
            }
          });
        }
      }

      _currentCount = widget.itemCount;
      setState(() {
        controller = TabController(
          length: widget.itemCount,
          vsync: this,
          initialIndex: _currentPosition,
        );
        controller.addListener(onPositionChange);
        controller.animation!.addListener(onScroll);
      });
    } else if (widget.initPosition != null) {
      controller.animateTo(widget.initPosition!);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.animation!.removeListener(onScroll);
    controller.removeListener(onPositionChange);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.itemCount < 1) return widget.stub ?? Container();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: TabBar(
            isScrollable: true,
            controller: controller,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).hintColor,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
            ),
            tabs: List.generate(
              widget.itemCount,
              (index) => widget.tabBuilder(context, index),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: List.generate(
              widget.itemCount,
              (index) => widget.pageBuilder(context, index),
            ),
          ),
        ),
      ],
    );
  }

  onPositionChange() {
    if (!controller.indexIsChanging) {
      _currentPosition = controller.index;
      if (widget.onPositionChange is ValueChanged<int>) {
        widget.onPositionChange!(_currentPosition);
      }
    }
  }

  onScroll() {
    if (widget.onScroll is ValueChanged<double>) {
      widget.onScroll!(controller.animation!.value);
    }
  }
}
