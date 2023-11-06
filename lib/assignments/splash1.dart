import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 255, 236, 70),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image(image: AssetImage("assets/icons/snap.png"),height: 100,width: 100,),
            Text("Snapchat",style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold
              
           ),)
          ],
        ),
      ),
    );
  }
}
