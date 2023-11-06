import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignments/LoginWindow.dart';
import 'package:flutter_application_1/assignments/SignupWindow.dart';
import 'package:flutter_application_1/assignments/Appsplash.dart';

void main(){
  runApp(MaterialApp(
    home: AppSplash(),
  ));
}

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
    ),
  
    body: SingleChildScrollView(
      child: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    SizedBox(height: 30,),
                    Text("Welcome aboard to our Landing page",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 15
                    ),
                    ),
                    Image.asset("assets/images/guy.jpg",height: 400,width: 400,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                        minWidth: double.infinity,
                        height:60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWindow()));
                        },
                        color: Colors.indigoAccent[400],
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text("Login",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70
                      
                        ),),
                        ),
                      ),
                    
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupWindow()));
                          },
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Text("Sign UP",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,
                            color: Colors.white70,
                       
                          ),),
                                           ),
                       ),	
       
     
                  ],
                ),
              ],
          ),
      ),
      ),
    ));
  }
}