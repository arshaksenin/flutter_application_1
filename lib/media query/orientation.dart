import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OrientationEx(),
  ));
}

class OrientationEx extends StatelessWidget {

  var orientation,height,width;

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: orientation == Orientation.portrait? Container(
        height: height/2,
        width: width/4,
        color: Colors.pinkAccent,
      ): Container(
        height: height/1,
        width: width/1,
        color: Colors.black,
      ),

    );
  }
}