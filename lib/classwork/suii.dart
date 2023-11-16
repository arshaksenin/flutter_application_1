import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MyWidget(),));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
        
    return Scaffold(appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login Page",
                style: TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 1,
              ),
            ]
          )
        )
      )
    );
              
    
  }
}