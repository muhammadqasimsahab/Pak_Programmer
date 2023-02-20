import 'package:flutter/material.dart';

class commonText extends StatelessWidget {
  String title;
  Color? color;
  TextOverflow? textOverflow;
  FontWeight? fontWeight;
  double? textSize;
  String? fontFamily;
  int? maxline;
  TextAlign? textAlign;

  commonText({
    Key? key,
    required this.title,
    this.color,
    this.textOverflow,
    this.textSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
    this.maxline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      maxLines: maxline,
      title,
      textAlign: textAlign,
      overflow: textOverflow,
      style: Theme.of(context).textTheme.headline6?.copyWith(
          fontFamily: fontFamily,

          color: color,
          fontSize: textSize,

          fontWeight: fontWeight),
    );
  }
}
