import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ClippersEx(),
  ));
}

class ClippersEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Clippers'),
      ),

      body: ListView(
        children: [

          ClipRect(
            child: Align(
              widthFactor: 0.7,
              heightFactor: 0.5,
              child: Image.asset("assets/images/maeve.jpg"))),
              
          ClipRRect(
          child: Image.asset("assets/images/lily.jpg"),
          borderRadius: BorderRadius.circular(110)),

          const SizedBox(
            height: 20,
          ),

          ClipOval(
          child: Image.asset("assets/images/ruby.jpg")),

          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Image.asset("assets/images/netherlands.jpg"),
          ),

          const SizedBox(
            height: 70,
          ),

          ClipPath(
            clipper: MovieTicketClipper(),
            child: Image.asset("assets/images/italy.jpg",),
          ),

          const SizedBox(
            height: 70,
          ),

          ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Image.asset("assets/images/germany.jpg"),
          ),
        ],
      ),
    );
  }
}