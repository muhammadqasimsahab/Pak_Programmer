
import 'package:flutter/material.dart';
import 'package:pak_programmer/util/color.dart';

class EditText extends StatefulWidget {
  TextEditingController? textController;
  String? lable;
  bool? suggestion;
  bool? autocorrect;
  bool? obscure;
  Widget? leadingIcon;
  String? hint;
  Function()? suffixIconOnpress;
  FormFieldValidator formvalidate;
  IconData? icon;
   EditText({
    Key? key,
    this.textController,
     this.lable,
    this.suggestion,
    this.autocorrect,
    this.obscure,
    this.suffixIconOnpress,
    this.hint,
    required this.formvalidate,
    this.leadingIcon,
    this.icon,
  }) : super(key: key);
  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
   bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
              height: 85,
              width: double.infinity,
              child: TextFormField(
              // controller: ,
                controller: widget.textController,
                validator:widget.formvalidate,
                cursorColor: Color(0xff424242),
                obscureText: obscure,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: widget.leadingIcon,
                  hintStyle: TextStyle(color: PColor.color_black),
                    labelText: widget.lable,
                    hintText: widget.hint,
                    labelStyle:  TextStyle(
                        color: PColor.color_black,
                        fontSize: 12,
                        fontFamily: 'productsan'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:  BorderSide(
                        color: PColor.color_grey,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:  BorderSide(
                        color: PColor.appColor,
                        width: 0.6,
                      ),
                    ),
                    contentPadding:  EdgeInsets.symmetric(vertical: 12,
                    horizontal: 13),
                    suffixIcon: GestureDetector(
                      onTap: widget.suffixIconOnpress,
                      child: Icon(
                       widget.icon,
                        color: PColor.color_black,
                      ),
                    ),
                    // filled: true,
                    fillColor: const Color(0xffF2F2F3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      gapPadding: 5.0,
                    )),
                style: const TextStyle(
                    color:Colors.black, fontFamily: 'productsan'),
              ),
            );

  }
}