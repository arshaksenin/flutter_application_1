import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView3(),

  ));
}

class GridView3 extends StatelessWidget {

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
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(8, (index) => 
      Container(
        margin: EdgeInsets.only(top: 10 ,right:10 ,left: 10,bottom: 10 ),
        child: Column(
          children: [

             Image.asset(imgs[index], fit: BoxFit.fill,),
             const Text("COUNTRIES",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
             textAlign: TextAlign.center,

            )
          ],
        ),
      ),
      ),
      ),
    );
  }
}