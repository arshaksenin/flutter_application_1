import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body:Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: 120,
            child: Text("ITALY",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.black)),
          ),

          Positioned(
            child: Text("The city of Dreams",
            style: TextStyle
            (fontWeight: FontWeight.bold,
            color: Colors.white)),
          ),

          Positioned(
            child: Container(
              margin: EdgeInsets.only(left: 50),
              height: 300,
              width: 400,
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),
                image: DecorationImage(fit: BoxFit.fill,
                  image: AssetImage("assets/images/italy.jpg")) )),
          ),
        ],
      ),
    );
  }
}