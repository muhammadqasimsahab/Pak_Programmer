import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/logo_screen.dart';

import 'app_style.dart';
import 'check_email.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child:
                  Image(image: AssetImage('assets/forgot_icon.png'), width: 100),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text('Forgot Password',
                    style: KEncodeSansBold.copyWith(fontSize: 20)),
                const SizedBox(
                  height: 30,
                ),
                Text('Enter Your Registered email below to receive \nPassword Rest Instruction',
                    style: KEncodeSansRagular.copyWith(color: KGrey)),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Klightgreen,
                            ),
                            fillColor: Color.fromARGB(225, 235, 235, 224),
                            filled: true,
                            hintText: 'email',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckEmail()));
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(225, 1, 125, 196),
                            Color.fromARGB(225, 42, 168, 148),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(kBorderRadius)),
                    child: Center(
                      child: Text('Send',
                          style: KEncodeSansRagular.copyWith(
                              color: Kwhite, fontSize: 15)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you have an account?',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                    InkWell(
                      onTap: () {
                      Get.to(LogInScreen(),transition: Transition.fadeIn);
                      },
                      child: Text('   Log In',
                          style: KEncodeSansBold.copyWith(color: Klightgreen)),
                    )
                  ],
                ),

              ],
            ),
          ),
        ));
  }
}
