import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/Gridview/gridview3.dart';
import 'package:flutter_application_1/Listview2.dart';
void  main(){
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: ConvexEx(),
   ));
}

class ConvexEx extends StatefulWidget {

  @override
  State<ConvexEx> createState() => _ConvexExState();
}

class _ConvexExState extends State<ConvexEx> {

  int index = 0;

  var screens = [
    Home(),
    ListView2(),
    GridView3(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Convex Bottom navigation Bar"),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        style: TabStyle.react,
        items: const [
        TabItem(icon: Icon(Icons.home),title: "Home"),
        TabItem(icon: Icon(Icons.person),title: "Profile"),
        TabItem(icon: Icon(Icons.search),title: "Search"),
      ],
      ),
      body: screens[index],
    );
  }
}