import 'dart:html';
import 'package:flutter/material.dart';



class Splash2 extends StatefulWidget{
  @override
  State<Splash2> createState() => _Splash2state();
    
}

class _Splash2state extends State<Splash2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 163, 245),
      body: Center(
        child: Lottie.asset("assets/animation/animlg.json"),
      ),
    );
  }
}