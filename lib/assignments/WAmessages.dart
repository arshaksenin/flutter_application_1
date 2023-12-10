import 'dart:math';
import 'package:flutter/material.dart';

class Mssgs extends StatelessWidget {
  
  var name = ["Otis","Ruby","Max","Adam","Jacob","Mave","Jason","James",];

  var messages = [
  "Hey",
  "You seen Ruby",
  "Dude!!",
  "Where r u man!",
  "Wanna hngout Today",
  "Come on My man",
  "sure i'll",
  "Yes i did"
  ];
  
  var date_time = [
  "21/11/2023",
  "09/11/2023",
  "11/11/2023",
  "08/11/2023",
  "07/11/2023",
  "23/11/2023",
  "20/11/2002",
  "01/11/2002",
  ];

  var images =[
    "assets/images/adam.jpg",
    "assets/images/lily.jpg",
    "assets/images/maevejpg",
    "assets/images/ruby.jpg",
    "assets/images/ola.jpg",
    "assets/images/eric.jpg",
    "assets/images/aimee.jpg",
    "assets/images/otis.jpg",
  ];

    var icons = [
    Icon(Icons.done),
    Icon(Icons.done_all,color: Colors.blue,),
    Icon(Icons.done),
    Icon(Icons.access_time),
    Icon(Icons.done_all, color: Colors.blue,),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.access_time),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: List.generate(8, (index) => 
   ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      backgroundImage: AssetImage(images[index]),
    ),
    title: Text(name[index]),
    subtitle: Row(
      children: [
        icons[index], 
        Text(messages[index]),],
     ),
    trailing: Column(
      children: [
        Text("Yesterday"),
                CircleAvatar(
                  child: Text("7",style: TextStyle(fontSize: 11),),foregroundColor: Colors.white,
                  radius: 7,
                  backgroundColor: Colors.green,

                ),
        Text(date_time[index]),
      ],
    ),
  ))
),

floatingActionButton: 
        FloatingActionButton(
        backgroundColor:Color.fromARGB(255, 75, 172, 124),
        onPressed: (){},
        child: Icon(Icons.chat_outlined,color: Colors.white,)),
    );
 }
}