
// import 'package:bab_ul_bazgha/theme/theme_model/model.dart';
// import 'package:bab_ul_bazgha/pages/about_us/about_us.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav/widgets/bottom_nav_layout.dart';
import 'package:pak_programmer/module/bottom_nav_home/pak_programmer_home.dart';
import 'package:pak_programmer/module/full_stack/full_stack.dart';
import 'package:pak_programmer/module/fyp/view/fypPage.dart';
import 'package:pak_programmer/module/setting/gotoscreen.dart';
// import 'package:pak_programmer/module/fyp/view/fyp.dart';
import 'package:pak_programmer/module/setting/setting.dart';
import 'package:pak_programmer/module/project/view/tut_list.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
// import 'package:bab_ul_bazgha/constant.dart/color.dart';
// import 'package:bab_ul_bazgha/constant.dart/commonText.dart';
// import 'package:bab_ul_bazgha/constant.dart/image.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:launch_review/launch_review.dart';
// import 'package:provider/provider.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class PakProgrammerBottomNav extends StatefulWidget {
  int? uid;

  PakProgrammerBottomNav({this.uid});
  @override
  State<PakProgrammerBottomNav> createState() =>
      _PakProgrammerBottomNavState();
}
class _PakProgrammerBottomNavState extends State<PakProgrammerBottomNav> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentIndex = 2;
  String text = '0';
  bool select = true;
  // final _bottomnavigationGlobalkey = GlobalKey();
  static List<Widget> pages = <Widget>[
    LanguageScreen(),
    FullStackScreen(),
    // GenralHomePage(),
    PakProgrammerHome(),
    // FirstHomeScreen(),
    //  GenralBottomMessageView(),
    // Text('Project'),
    BottomNavProjectPage(),
    // Text('Fyp'),
    FypPage()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen = PakProgrammerHome();

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      extendBody: true,
      // key: scaffoldKey,
      bottomNavigationBar: GenralTabBarMaterialWidgets(

        index: currentIndex,
        onChangedTab: onChangeTab,

      ),
      body: pages[currentIndex],
    );
  }
  void onChangeTab(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }
}
