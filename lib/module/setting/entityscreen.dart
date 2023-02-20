import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Entity extends StatefulWidget {
  String? title;
  IconData? leadingIcon;
  Function()? Onpress;
  IconData? icon;
  Entity({
    Key? key,
    required this.title,
    required this.Onpress,
    required this.leadingIcon,
    this.icon,
  }) : super(key: key);
  @override
  State<Entity> createState() => _EntityState();
}

class _EntityState extends State<Entity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          leading: Container(
            height: 45.h,
            width: 45.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Center(
              child: Icon(widget.leadingIcon),
            ),
          ),
          title: Text(widget.title.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
          trailing: Icon(widget.icon),
        ),
      ),
    );

  }
}