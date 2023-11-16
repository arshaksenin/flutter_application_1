import 'dart:math';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Card1(),));
}

class Card1 extends StatelessWidget {
   
   var icoons = [

    Icon(Icons.home,size: 70,),
    Icon(Icons.notification_important_outlined,size: 70,),
    Icon(Icons.linked_camera,size: 70,),
    Icon(Icons.ac_unit_sharp,size: 70,),
    Icon(Icons.leak_remove_outlined,size: 70,),
    Icon(Icons.book,size: 70,),
    Icon(Icons.phone,size: 70,),
    Icon(Icons.mail,size: 70,),
    Icon(Icons.map,size: 70,),
    Icon(Icons.computer_outlined,size: 70,),
    Icon(Icons.mic_off,size: 70,),
    Icon(Icons.file_present_sharp,size: 70,),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 120,crossAxisCount: 2,mainAxisSpacing: 2,crossAxisSpacing: 5
        ), 
        itemBuilder: (context, index) =>
        Card(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              margin:  EdgeInsets.all(15),
              child: Row(
                children: [icoons[index],
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Icon \nCards",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold,)),
                    ),
                  ),
                ],
              ),
         ),
      ));
  }
}