import 'package:flutter/material.dart';

class WaCalls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body : 
       ListView(
        children: const [
            ListTile(
            title: Text("Ajay"),
            subtitle: Row(
            children: [
            Icon(Icons.arrow_outward,color: Colors.green,),
            Text("November 7,12:09 AM",style: TextStyle(color: Colors.green))]),
            leading: CircleAvatar(backgroundColor: Colors.blueAccent,
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone_outlined,color: Colors.green)),


          ListTile(
            title: Text("Otis"),
            subtitle: Row(
            children: [
            Icon(Icons.arrow_outward,color: Colors.green,),
            Text("November 6,11:40 AM",style: TextStyle(color: Colors.green))]),
            leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/otis.jpeg")),
            trailing: Icon(Icons.phone_outlined,color: Colors.green)),
         
          ListTile(
            title: Text("Maddisson"),
            subtitle:Text("November 5,11:00 PM"),
            leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 190, 103, 103),
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone_missed_outlined)),
          
          ListTile(
            title: Text("James"),
            subtitle: Row(
            children: [
            Icon(Icons.arrow_outward,color: Colors.green,),
            Text("November 5,09:40 PM",style: TextStyle(color: Colors.green))]),
            leading: CircleAvatar(backgroundColor: Colors.amber,
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone_outlined,color: Colors.green)),

          ListTile(
            title: Text("Ruby"),
            subtitle:Text("November 2,10:10 PM",style: TextStyle(color: Colors.red),),
            leading: CircleAvatar(backgroundColor: Colors.purple,
            child: Icon(Icons.person_2),),
            trailing:Icon(Icons.phone_callback_outlined,color: Colors.red,)),
          
          ListTile(
            title: Text("Amy"),
            subtitle:Text("November 1,11:10 PM"),
            leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 103, 190, 162),
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone_missed_outlined)),

          ListTile(
            title: Text("Adam"),
            subtitle:Text("October 31 2,01:10 PM",style: TextStyle(color: Colors.red),),
            leading: CircleAvatar(backgroundColor: Colors.purple,
            child: Icon(Icons.person_2),),
            trailing:Icon(Icons.phone_callback_outlined,color: Colors.red,)),

          ListTile(
            title: Text("Jules"),
            subtitle:Text("October 31,12:09 PM"),
            leading: CircleAvatar(backgroundColor: Color.fromARGB(255, 103, 190, 162),
            child: Icon(Icons.person_2),),
            trailing: Icon(Icons.phone_missed_outlined)),
          
        ],
      ),
    );
  }
}