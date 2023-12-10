import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignments/ListUI.dart';
import 'package:flutter_application_1/assignments/WAcalls.dart';
import 'package:flutter_application_1/assignments/WAmessages.dart';


class WaTabbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          SizedBox(width: 15,),
          Icon(Icons.search_rounded,color: Colors.white,),
          PopupMenuButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            iconColor: Colors.white,
            itemBuilder: (context){
            return [
            const PopupMenuItem(child: Text("New group")),
            const PopupMenuItem(child: Text("New broadcast")),
            const PopupMenuItem(child: Text("Linked Devices")),
            const PopupMenuItem(child: Text("Settings ")),
            ];
          })
          ],
          backgroundColor: Color.fromARGB(255, 75, 172, 124),
          title: const Text("WhatsApp",style: TextStyle(color: Colors.white),),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorPadding: EdgeInsets.only(top: 15,),
            tabs: [Text("Chats",style: TextStyle(color: Colors.white),),
            Text("Status",style: TextStyle(color: Colors.white),),
            Text("Call",style: TextStyle(color: Colors.white),)],
            ),
        ),
        body: TabBarView(children: [
          Mssgs(),
          Europe(),
          WaCalls(),
        ]),
      ),
    );
  }
}