import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignments/Appsplash.dart';
import 'package:flutter_application_1/assignments/HomeWindow.dart';
import 'package:flutter_application_1/assignments/LoginWindow.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: AppSplash(),
  ));
}

class SignupWindow extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading:  IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>Welcome(),));
      }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,))
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
    
            Text(
              'Registration',
              style: GoogleFonts.alata(
              fontSize: 50,fontWeight: FontWeight.bold)
              
              ),
              
            Text(
              'Enter the details to Sign Up',
              style: GoogleFonts.alata(
              fontSize: 20,fontWeight: FontWeight.normal)
              
              ),
    
              Padding(
                padding: EdgeInsets.all(19.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    prefix: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )),
                ),
              ),
    
              Padding(
               padding: EdgeInsets.only(bottom: 10, left: 15, right: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefix: Icon(Icons.lock),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )),
                ),
              ),
    
              Padding(
               padding: EdgeInsets.all(19.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    prefix: Icon(Icons.lock),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                    )),
                ),
              ),
              MaterialButton(
               height: 50,
               minWidth: 170,
               onPressed: (){},
               color: Colors.lightBlueAccent,
               shape:const StadiumBorder(),
               child:  const Text("Sign Up"),
              
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginWindow()));
                }, 
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.blue,fontSize: 15),
                  children: [
                    TextSpan(text: "Have an account"),
                    TextSpan(
                    text: " Sign In !!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold))
                  ]
                ))
            
            )
          ],
        ),
      ),
    ),
   ); 
  }
}