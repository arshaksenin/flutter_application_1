import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion tile"),
      ),
      body: ListView(

        children: [
          ExpansionTile( title: Text("List 1"),
          subtitle: Text("colors"),
          trailing: Icon(Icons.browser_updated_outlined),
          collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          backgroundColor: Colors.blueAccent,
          collapsedBackgroundColor: Colors.brown,
          children:
          List.generate(4, (index) => ListTile(
            leading: CircleAvatar(backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)]),))),

         ExpansionTile( title: Text("List 2"),
          children:
          List.generate(4, (index) => ListTile(
            leading: CircleAvatar(backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)]),))),
        
         ExpansionTile( title: Text("List 3"),
          children:
          List.generate(4, (index) => ListTile(
            leading: CircleAvatar(backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)]),))),

        ],
      ),
    );
  }
}