import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomsheetEx(),
  ));
}

class BottomsheetEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: GestureDetector(
        onDoubleTap: () {
          showsheet(context);
        },
       child: Image.asset("assets/images/france.jpg")),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(
   context: context,
   builder: (context) {
   return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      ListTile(
        leading: Icon(
          Icons.share,color: Colors.blueAccent,),
          title: Text("Share"),
          titleTextStyle: 
          TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      ListTile(
        leading: Icon(Icons.copy,color: Colors.black,),
        title: Text("Copy"),
        titleTextStyle: 
        TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    ],
   );
  });
}