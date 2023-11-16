import 'package:flutter/material.dart';
import 'package:flutter_application_1/sttful_Login.dart';
import 'package:flutter_application_1/Home.dart';

void main(){
  runApp(MaterialApp(home: Stateful_Register(),));
}

class Stateful_Register extends StatefulWidget{
  @override
  State<Stateful_Register> createState() => _Stateful_RegState();
    
}
 class _Stateful_RegState extends State<Stateful_Register> {
  
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  final validkey = GlobalKey<FormState>();

  String? pwd;
  bool showpwd = true;
  bool showpwd2 = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Registration Page",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  height: 15,
                ),
                
                 Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextFormField(
                        controller: namecntrl,
                        validator: (email){
                          if(email!.isEmpty || !email.contains("@") || !email.contains("gmail.com")){
                           return "Please enter a valid Email adrress";
                          }
                        },
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
                      child: TextFormField(
                        controller: passcntrl,
                        validator: (password){
                          pwd = password;
                          if(password!.isEmpty || password.length < 6){
                           return "Please enter a valid Password";
                          }
                        },
                        obscureText: showpwd,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(showpwd == true){
                                showpwd = false;
                              }else{
                                showpwd = true; 
                              }
                            });
                          }, icon: Icon(showpwd == true
                          ? Icons.visibility_off_sharp
                          : Icons.visibility
                          
                        )),
                          prefix: Icon(Icons.lock),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                          )),
                      ),
                    ),
      
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextFormField(
                        validator: (password){
                          if(password!.isEmpty || password.length < 6){
                           return "Emtered password doesn't match please enter the same password";
                          }
                        },
                        obscureText: showpwd2,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              if(showpwd2 == true){
                                showpwd2 = false;
                              }else{
                                showpwd2 = true; 
                              }
                            });
                          }, icon: Icon(showpwd2 == true
                          ? Icons.visibility_off_sharp
                          : Icons.visibility
                          
                        )),
                          labelText: "Confirm password",
                          prefix: Icon(Icons.person),
                          hintText: "Confirm password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)
                          )),
                      ),
                    ),
      
                  MaterialButton(
                   height: 50,
                   minWidth: 170,
                   onPressed: (){
                    final valid = validkey.currentState!.validate();
                    if(valid == true){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text("Invalid/ email password")));
                    }
      
                   },
                   color: Colors.green,
                   shape:const StadiumBorder(),
                   child:  const Text("Login"),
                  ),
      
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Stateful_Login()));
                    }, 
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.blue,fontSize: 15),
                      children: [
                        TextSpan(text: "Have an account?"),
                        TextSpan(
                        text: " Sign In Here!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold))
                      ]
                    ))
                
                )
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
 }

  
