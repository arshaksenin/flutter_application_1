import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: GridView1(),));
}

class GridView1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      // children: 
      //   List.generate(20, (index) => Card(
      //     child: Image.asset("assets/images/otis.jpeg"),
      //   )
      //   )
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 200,
        mainAxisSpacing:20,
        crossAxisSpacing:50
        ),
        children: 
         List.generate(20, (index) => Container(
          color: Colors.red[600],
         child: Image.asset("assets/images/otis.jpeg"),
         )
        )
      ),
    );
  }
}