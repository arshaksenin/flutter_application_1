import 'package:flutter/material.dart';
void main(){
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppbarProperty(),));
}

class AppbarProperty extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        leading: const Icon(Icons.menu),
        actions:  [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 15,),
          const Icon(Icons.search_rounded),
          PopupMenuButton(itemBuilder: (context){
           return [
            const PopupMenuItem(child: Text("New group")),
            const PopupMenuItem(child: Text("New broadcast")),
            const PopupMenuItem(child: Text("Linked Devices")),
            const PopupMenuItem(child: Text("Settings ")),

           ];
          })
        ],
      ),
    );
  }
}