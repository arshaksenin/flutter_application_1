import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerEx(),
  ));
}

class DrawerEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer")),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 48, 48, 48),
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("Maeve"), 
                accountEmail: Text("maevewiley@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/otis.jpeg")),
                otherAccountsPictures: [
                  CircleAvatar(backgroundImage: AssetImage("assets/images/otis.jpeg"),)
                ],
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/spain.jpg"),fit: BoxFit.fill)),
                ),

                ListTile(
                  leading: Icon(Icons.people,color: Colors.white,),
                  title: Text("New Group",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.person,color: Colors.white,),
                  title: Text("Contacts",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.phone,color: Colors.white,),
                  title: Text("Calls",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.person_pin_circle,color: Colors.white,),
                  title: Text("People Nearby",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.bookmark_border,color: Colors.white,),
                  title: Text("saved Messages",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.settings,color: Colors.white,),
                  title: Text("Settings",style: TextStyle(color: Colors.white),),
                ),

                ListTile(
                  leading: Icon(Icons.settings,color: Colors.white,),
                  title: Text("Settings",style: TextStyle(color: Colors.white),),
                ),
            ],
          ),
        ) ,
    );
  }
}