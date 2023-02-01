import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({super.key, required this.ButtonText, this.onpress});
  var ButtonText;
  Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: onpress,
        child: Container(
          width: Get.size.width - 10,
          height: Get.size.height * 0.06,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 237, 129, 122)),
          child: Center(
              child: Text(
            ButtonText,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
      ),
    );
  }
}
