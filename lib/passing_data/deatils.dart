import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing_data/dummy_data.dart';

class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((e) => e["id"]==tappedId); 
    return Scaffold(
      body: Column(
        children: [
          
          Image.asset(product["image"]),
          Text(product["name"]),
          Text("${product["price"]}"),
          Text(product["description"]),

        ],
      ),
    );
  }
}