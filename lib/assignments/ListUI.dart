import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Europe(),));
}

class Europe extends StatelessWidget {
  
  var images = [
  "assets/images/norway.jpg",
  "assets/images/spain.jpg",
  "assets/images/croatia.jpg",
  "assets/images/iceland.jpg",
  "assets/images/france.jpg",
  "assets/images/italy.jpg",
  "assets/images/germany.jpg",
  "assets/images/netherlands.jpg",
  
  ];

  var Countries = [
    "Country : NORWAY",
    "Country : SPAIN",
    "Country : CROATIA",
    "Country : ICELAND",
    "Country : FRANCE",
    "Country : ITALY",
    "Country : GERMANY",
    "Country : NETHERLANDS",
  ];

  var Capitals = [
    "Capital : Oslo",
    "Capital : Madrid",
    "Capital : Zagreb",
    "Capital : Reykjavík",
    "Capital : Paris",
    "Capital : Rome",
    "Capital : Berlin",
    "Capital : Amsterdam",
  ];

  var Population = [
   "Population : 20 million",
   "Population : 30 million",
   "Population : 24 million",
   "Population : 12 million",
   "Population : 43 million",
   "Population : 45 million",
   "Population : 32 million",
   "Population : 11 million",
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    title: Text("Countries in Europe"),
    centerTitle: true,
    backgroundColor: const Color.fromARGB(255, 255, 68, 0),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15),
        child: ListView(
         children: List.generate(8, (index) => 
          SizedBox(height: 136,width: 200,
            child: Card(
              color: Colors.orange,
              child: ListTile(
                  title: Image.asset(images[index],fit:BoxFit.fitHeight,alignment: Alignment.bottomLeft,height: 120,width: 200,),
                  trailing:Column(
                    children: [
                      Text(Countries[index],style: TextStyle(fontWeight:FontWeight.bold),),
                      Text(Capitals[index]),
                      Text(Population[index]),
                    ],
                  ) ,
                 ),
            ),
          ),
          )
         )
    ));
  }
}