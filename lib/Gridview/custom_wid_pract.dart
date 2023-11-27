import 'package:flutter/material.dart';
import 'Custom_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView6(),
  ));
}

class GridView6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: GridView.custom(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 8,
            (context, index) => 

            CustomWidget(
            label: const Text("Heyy"),
            image: const Image(image: AssetImage("assets/images/italy.jpg")),
            bgcolor: Colors.lightGreenAccent,
            onpressed: (){}),

    )));
  }
}