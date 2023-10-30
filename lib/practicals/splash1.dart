import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.tiktok,
            //   size: 120,
            //   color: Colors.blueAccent
            //   ,),
            Image(image: AssetImage("assets/icons/spot.png"),height: 100,width: 100,),
            Text("Spotify",style: TextStyle(
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
