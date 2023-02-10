import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'Newpasswordfile.dart';
import 'app_style.dart';

class CodeFile extends StatefulWidget {
  const CodeFile({Key? key}) : super(key: key);

  @override
  State<CodeFile> createState() => _CodeFileState();
}

class _CodeFileState extends State<CodeFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 140,),
          child: Column(
            children: [
              Text('Enter Your 4 Digit Code',
                  style: KEncodeSansRagular.copyWith(
                  color: KDarkGrey, fontSize: 15)),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OtpTextField(
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                       showFieldAsBox: true,
                       onCodeChanged: (String code) {
                       },
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewPassword()));
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
              ),
            ],
          ),
        ),
      )
    );
  }
}
