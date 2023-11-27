import 'package:flutter/material.dart';
import 'package:flutter_application_1/Listview2.dart';
import 'package:flutter_application_1/Listview3.dart';
import 'package:flutter_application_1/Listview4.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabbarEx(),
  ));
}

class TabbarEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15,),
          Icon(Icons.search_rounded),
          PopupMenuButton(itemBuilder: (context){
            return [
            const PopupMenuItem(child: Text("New group")),
            const PopupMenuItem(child: Text("New broadcast")),
            const PopupMenuItem(child: Text("Linked Devices")),
            const PopupMenuItem(child: Text("Settings ")),
            ];
          })
          ],
          backgroundColor: Colors.green[400],
          title: const Text("Whatsapp"),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: EdgeInsets.only(top: 15,),
            tabs: [Text("Chats"),
            Text("Status"),Text("Call")],
            ),
        ),
        body: TabBarView(children: [
          ListView2(),
          ListView3(),
          ListView4(),

        ])
      ),
    );
  }
}