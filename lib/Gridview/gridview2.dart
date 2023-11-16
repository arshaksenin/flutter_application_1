import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView2(),
  ));
}
class GridView2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  body: GridView.builder(
    // itemCount: 20,
    // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 20,mainAxisSpacing: 20),
    // itemBuilder: (context, index) =>
    // Container(
    //   color: const Color.fromARGB(255, 132, 2, 155),
    //   child: Center(child: Text("User $index",)),
    //   )

    itemCount: 20,
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 150,
    mainAxisExtent: 200,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20),
    itemBuilder: (context, index) =>
    Container(
      color: const Color.fromARGB(255, 132, 2, 155),height: 100,width: 100,
      child: Column(
        children: [
          Image.asset("assets/images/otis.jpeg"),
          Text("Otis milburn",style: TextStyle(color: Color.fromARGB(255, 24, 255, 109)),)
        ],
      ),
      )

     ),
    );
  }
}