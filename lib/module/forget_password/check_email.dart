import 'package:flutter/material.dart';

import 'app_style.dart';
import 'code_file.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child:
                    Image(image: AssetImage('assets/email.png'), width: 100),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('Check Your Email',
                      style: KEncodeSansBold.copyWith(fontSize: 20)),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('we have send a password Instruction\n to your Email',
                      style: KEncodeSansRagular.copyWith(color: KGrey)),
                  const SizedBox(
                    height: 30,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CodeFile()));
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
                        child: Text('Check Code',
                            style: KEncodeSansRagular.copyWith(
                                color: Kwhite, fontSize: 15)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Did you Don`t code? ',
                          style: KEncodeSansRagular.copyWith(color: KGrey)),
                      InkWell(
                        onTap: () {

                        },
                        child: Text('Please Resend',
                            style: KEncodeSansBold.copyWith(color: Klightgreen)),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
