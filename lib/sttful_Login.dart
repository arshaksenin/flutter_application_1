import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';

void main(){
  runApp(MaterialApp(home: Stateful_Login(),));
}

class Stateful_Login extends StatefulWidget{
  @override
  State<Stateful_Login> createState() => _Stateful_LoginState();
    
}
  class _Stateful_LoginState extends State<Stateful_Login> {
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  final validkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: validkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login Page",
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
                         return "Invalid Email adrress";
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
                      validator: (password){
                        if(password!.isEmpty || password.length < 6){
                         return "Invalid Password";
                        }
                      },
                      obscureText: true,
                      obscuringCharacter: "*",
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
                  final valid = validkey.currentState!.validate();
                  if(valid == true){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Invalid/ email password")));
                  }
                  namecntrl.clear();
                  passcntrl.clear();

                 },
                 color: Colors.green,
                 shape:const StadiumBorder(),
                 child:  const Text("Login"),
                 ),

                 TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
      ),
    );
  }
 }

  
