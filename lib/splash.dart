import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){

  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return Scaffold(

      //backgroundColor: Colors.green,
      body: Container(
        decoration: const BoxDecoration(
        ///to set abckground image for body
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: NetworkImage("https://images.unsplash.com/photo-1619983081563-430f63602796?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")))
       ///to set gradient for body
       gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.topCenter,
        colors: [
          Colors.blueAccent,
          Colors.deepPurpleAccent,
          Colors.lime,
          Colors.orange,
        ]
        )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.tiktok,
              //   size: 120,
              //   color: Colors.blueAccent
              //   ,),
              // Image(image: AssetImage("assets/icons/spot.png"),height: 100,width: 100,),
               Image(image: NetworkImage("data:image/png;base64,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"),height: 20,width: 20,),
              Text(
                "Musify",
                // style: TextStyle(
                // fontSize: 30,
                // color: Colors.white54,
                // fontWeight: FontWeight.bold),
                style: GoogleFonts.blackOpsOne(
                  fontSize: 40,
                  color: Colors.white,
                
                ),
          
              )
            ],
          ),
        ),
      ),
    );
  }
}
