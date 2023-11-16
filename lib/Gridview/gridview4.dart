import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView4(),
  ));
}

class GridView4 extends StatelessWidget {

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
      body: GridView.extent(maxCrossAxisExtent: 300,
      children: List.generate(8, (index) => Container(
        margin: const EdgeInsets.only(top: 10 ,right:10 ,left: 10,bottom: 10 ),
        child: Column(
          children: [

             Image.asset(imgs[index], fit: BoxFit.fill,),
             Text(Countries[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
             textAlign: TextAlign.center),
          ],
         ),
        ),
       ),
      ),
    );
  }
}