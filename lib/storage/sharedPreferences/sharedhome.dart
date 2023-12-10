import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/storage/sharedPreferences/sharedlogin.dart';

class SharedHome extends StatefulWidget {
  

  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  @override
  void initState() {
    getvalue();
    super.initState();
  }
  @override
  String? name;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Hi $name....."),
      actions: [
        IconButton(onPressed: ()async{
          final SharedPreferences preferences =await SharedPreferences.getInstance()!;
        preferences.setBool("loggedin", false);
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SharedLogin()));
          }, icon: Icon(Icons.logout))
      ],),
    );
  }

  void getvalue() async{
    final SharedPreferences preferences =await SharedPreferences.getInstance()!;
    setState(() {
      name=preferences.getString("name")!;
    });

  }
}