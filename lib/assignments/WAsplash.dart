import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignments/WAtabs.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WASplash(),
  ));
}

class WASplash extends StatefulWidget {
  @override
  State<WASplash> createState() => _WASplashstate();
}

class _WASplashstate extends State<WASplash> {
  
@override
  void initState() {
    Timer( Duration(seconds: 3), () { 
     Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => WaTabbar()));
    });
    super.initState();
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
               Image(image: AssetImage("assets/images/whatsapp.png"),height: 120,width: 120,),
              
            ],
          ),
        ),
      ),);
  }
}