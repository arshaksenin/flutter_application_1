import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: SignUp(),
  ));
}

class SignUp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading:  Icon(Icons.arrow_back_ios,color: Colors.black,),
      elevation: 0,
    ),
    body: SingleChildScrollView(
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
    
            Text(
              'Registration',
              style: GoogleFonts.righteous(
              fontSize: 50,fontWeight: FontWeight.bold)
              
              ),
              
            Text(
              'Enter the details to Sign Up',
              style: GoogleFonts.righteous(
              fontSize: 20,fontWeight: FontWeight.normal)
              
              ),
    
              Padding(
                padding: EdgeInsets.all(15.0),
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
               padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextField(
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
               padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextField(
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
               color: Colors.green,
               shape:const StadiumBorder(),
               child:  const Text("Login"),
              
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
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