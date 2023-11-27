import 'package:flutter/material.dart';
import 'package:flutter_application_1/media%20query/bigscreen.dart';
import 'package:flutter_application_1/media%20query/mobilescreen.dart';

class MediaHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    var devicewidth = MediaQuery.of(context).size.width;

    if(devicewidth < 600){

      return MobileScreen();

    }else{

      return BigScreen();
    }
  }
}