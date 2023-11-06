import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/SignupPage.dart';
import 'package:flutter_application_1/Splash_stateful.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: Splash2(),
  ));
}
class LoginPage extends StatelessWidget{
  String username = "admin";
  String password = "pass123";

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: (){
        
      }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      elevation: 0,
    ),
    body:Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              Text(
                'Login',
                style: GoogleFonts.righteous(
                fontSize: 50,fontWeight: FontWeight.bold)
                
                ),
                
              Text(
                'Welcome Back! Login with your credentials !!',
                style: GoogleFonts.righteous(
                fontSize: 20,fontWeight: FontWeight.normal)
                
                ),
      
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    controller: user_controller,
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
                    obscureText: true,
                    obscuringCharacter: "*",
                    controller: pass_controller,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefix: Icon(Icons.lock),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                      )),
                  ),
                ),
                MaterialButton(
                 height: 50,
                 minWidth: 170,
                 onPressed: (){
                  if(username == user_controller.text && password == pass_controller.text){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                  }
                  user_controller.text = "";
                  pass_controller.text = "";
                 },
                 color: Colors.green,
                 shape:const StadiumBorder(),
                 child:  const Text("Login"),
                
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  }, 
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.blue,fontSize: 15),
                    children: [
                      TextSpan(text: "Don't have an account"),
                      TextSpan(
                      text: " Sign Up !!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold))
                    ]
                  ))
              
              )
            ],
          ),
        ),
    );
  }
}