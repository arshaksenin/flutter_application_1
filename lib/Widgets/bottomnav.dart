import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Gridview/gridview1.dart';
import 'package:flutter_application_1/Gridview/gridview3.dart';

void  main(){
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Bottomnav(),
   ));
}

class Bottomnav extends StatefulWidget {

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index = 0;
  var screens = [
    Home(),
    GridView1(),
    GridView3(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black ,
        title: const Text("Bottom Navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.tealAccent,
        currentIndex:index ,
      backgroundColor: Colors.purple[400],

      items: const [

      BottomNavigationBarItem(
       icon: Icon(Icons.home),
       label: "home",
       backgroundColor: Colors.amber ),

      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
        backgroundColor: Colors.green),

      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",
        backgroundColor: Colors.red),

       ],
      ),
      body: screens[index],
    );
  }
}