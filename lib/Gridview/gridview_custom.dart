import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViiew5(),
  ));
}

class GridViiew5 extends StatelessWidget {

  var Countries = [
    "NORWAY",
    "SPAIN",
    "CROATIA",
    "ICELAND",
    "FRANCE",
    "ITALY",
    "GERMANY",
    "NETHERLANDS",
  ];

  var imgs = [
    "assets/images/norway.jpg",
    "assets/images/spain.jpg",
    "assets/images/croatia.jpg",
    "assets/images/iceland.jpg",
    "assets/images/france.jpg",
    "assets/images/italy.jpg",
    "assets/images/germany.jpg",
    "assets/images/netherlands.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 8,
            (context, index) => Container(
              margin: const EdgeInsets.only(
                  top: 10, right: 10, left: 10, bottom: 10),
              child: Column(
                children: [
                  Expanded(
                      child: Image.asset(
                    imgs[index],
                    fit: BoxFit.fill,
                  )),
                  Text(Countries[index],
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          )),
    );
  }
}
