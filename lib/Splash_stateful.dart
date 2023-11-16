import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: Splash2(),));
}

class Splash2 extends StatefulWidget{
  @override
  State<Splash2> createState() => _Splash2state();
    
}
 class _Splash2state extends State<Splash2> {
   @override
  void initState() {
    Timer(Duration(seconds: 3), () { 
     Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginPage()));
    });
    super.initState();
  } 
    
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 0, 94, 255),
      body: Center(
        child:
         Lottie.asset("assets/animation/animlg.json",height: 350,width: 350),
         //Lottie.network("https://lottie.host/88fc4eea-bf37-4a20-b3ee-e6d60b9b4c10/6AJcpHG496.json"),
      
      ),
    );
  }
 }

  
