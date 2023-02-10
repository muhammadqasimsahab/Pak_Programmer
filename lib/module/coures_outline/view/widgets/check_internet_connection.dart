import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckInterConnection extends StatefulWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  CheckInterConnection({required this.snapshot,required this.widget});

  @override
  State<CheckInterConnection> createState() => _CheckInterConnectionState();
}

class _CheckInterConnectionState extends State<CheckInterConnection> {
  @override
  Widget build(BuildContext context) {
    switch(widget.snapshot.connectionState){
      case ConnectionState.active:
        final state=widget.snapshot.data!;
      switch(state){
        case ConnectivityResult.none:
          return Center(child: Text('No Internet Connection',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),);
        default:
          return widget.widget;
      }
      default:
        return Text("");
    }
  }
}