import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/language_detailpage.dart/controller/basic_detail_Controller.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

int? basic_subHeading_item_id;
class LangDetail extends StatefulWidget {
  int? id;
  String? name;
  LangDetail({this.id,this.name});

  @override
  State<LangDetail> createState() => _LangDetailState();
}

class _LangDetailState extends State<LangDetail> {
  final basicController=Get.put(BasicDetailController());
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      basic_subHeading_item_id=widget.id;
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: commonText(
          title: widget.name.toString(),
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
      body: Obx((){
        if(basicController.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }else{
          return ListView.builder(
            itemCount: basicController.productlist.length,
            itemBuilder: (context,index){
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(title: basicController.productlist[index].heading,color: PColor.color_black,fontWeight: FontWeight.w700,textSize: 14.5.sp,),
                      commonText(title: basicController.productlist[index].discription,textAlign: TextAlign.justify,color: PColor.color_black,textSize: 12.sp,)

                    ],

                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
