import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/tester/controller/controller.dart';
import 'package:http/http.dart' as http;
class TesterPage extends StatefulWidget {
  const TesterPage({super.key});

  @override
  State<TesterPage> createState() => _TesterPageState();
}

class _TesterPageState extends State<TesterPage> {
 
  // Future getdata() async{
  //   final response=await http.get(Uri.parse("https://dummyjson.com/products"));
  //  try {
     
  //   if(response.statusCode==200){
  //     var data=productModelFromJson(response.body);
  //     return data.products;
  //   }else{
  //     print("Error during connection");
  //   }
  //  } catch (e) {
  //    print(e.toString());
  //  }
  // }
final controler=Get.put(TesterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body:  Obx(() {
        return  ListView.builder(
            itemCount: controler.productList.length,
            itemBuilder: (context,index){
              return Card(child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: ListTile(
                  title: Text(controler.productList[index].name),
                  subtitle: Text(controler.productList[index].description),
                ),
              ));
            },
          );
        // if(controler.isLoading.value){
        //   return Center(


        //     child: CircularProgressIndicator(),
        //   );
        // }else{
        //  return 
        // }
       })
     
      ),
    );
  }
}