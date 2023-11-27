import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {

final Color? bgcolor;
final Image? image;
final Widget? label;
VoidCallback? onpressed;

CustomWidget({this.image, required this.label, required this.onpressed,this.bgcolor});

  @override
  Widget build(BuildContext context) {
   return Card(
    color: bgcolor,
    child: Column(
      children: [
       Container(child: image,),

       ElevatedButton(onPressed: onpressed,
       child: label)
      ],
    ),
   );
  } 
}