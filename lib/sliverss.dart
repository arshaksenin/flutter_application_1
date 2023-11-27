import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 0, 10, 68),
            floating: true,
            title: const Text("Slivers"),
             bottom: AppBar(
              backgroundColor: Color.fromARGB(255, 0, 10, 68),
              title: Container(
                width:double.infinity,
                height: 40,
                color: Colors.blueGrey[200],
                child: const TextField(
                  decoration: InputDecoration(
                  hintText:"search",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.black,
                  suffixIcon: Icon(Icons.camera_alt_outlined),
                  suffixIconColor: Colors.black),
                ),
              ),
             ),
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(30, (index) => ListTile(
                leading: const Icon(Icons.person_3),
                title: Text("User$index"),
              ))
            )
          )
        ],
      ),
    );
  }
}