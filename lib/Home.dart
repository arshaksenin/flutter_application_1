import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
      ),
     body: ListView(
        children: const [
         Card(
           child: ListTile(
            title: Text("Ajay"),
            leading: CircleAvatar(backgroundColor: Colors.blueAccent,
            child: Icon(Icons.person_2),),
            trailing: Text("12:30 am")),
         ),

          Card(
           child: ListTile(
            title: Text("Otis"),
            subtitle: Text("9809030119"),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/otis.jpeg"),
            ),
            trailing: Icon(Icons.phone),),
         ),
         Card(
           child: ListTile(
            title: Text("Maddisson"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,color: Colors.blue,),
                Text("Hey, i found Ruby with Otis"),
              ],
            ),
            leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 227, 0, 0),
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone),),
         ),
         Card(
           child: ListTile(
            title: Text("James"),
            leading: CircleAvatar(backgroundColor: Colors.amber,
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone),),
         ),
         Card(
           child: ListTile(
            title: Text("Ruby"),
            leading: CircleAvatar(backgroundColor: Colors.purple,
            child: Icon(Icons.person_2),),
            trailing: Column(
              children: [
                Text("Yesterday"),
                CircleAvatar(
                  child: Text("7"),foregroundColor: Colors.white,
                  radius: 12,
                  backgroundColor: Colors.green,

                )
              ],
            )),
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FaIcon(FontAwesomeIcons.google),
            FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
            FaIcon(FontAwesomeIcons.instagram),
            FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),

          ],
         )
        ],
      ),
    );
  }

}