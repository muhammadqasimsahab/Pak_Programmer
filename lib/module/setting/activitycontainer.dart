import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ActivityContainer extends StatefulWidget {
  String title;
  IconData icon;
  Color color;
  Function() onpress;
 ActivityContainer({Key? key,required this.title,required this.icon,required this.color,required this.onpress}) : super(key: key);

  @override
  State<ActivityContainer> createState() => _ActivityContainerState();
}

class _ActivityContainerState extends State<ActivityContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpress,
      child: Container(
        height: 80.h,
        width: 180.w,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("_\t_",style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),),
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: widget.color,
                      shape: BoxShape.circle
                  ),
                  child: Icon(widget.icon),
                )
              ],)
          ],
        ),

      ),
    );
  }
}
