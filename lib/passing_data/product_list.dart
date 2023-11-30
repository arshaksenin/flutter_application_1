import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing_data/deatils.dart';
import 'package:flutter_application_1/passing_data/dummy_data.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: ProductList(),
    routes: {
      "details" : (context) => Details(),
    },
  ));
}

class ProductList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlueAccent,
        title: const Text("Products List"),
      ),

      body: ListView(
        children: products.map((e) => ListTile(leading: Text(e["name"]),
        onTap: ()=> gotodetails(context,e["id"]),
        )).toList()
      ),
    );
  }

  void gotodetails(BuildContext context, id){
    Navigator.pushNamed(context,"details",arguments: id);
  }
}