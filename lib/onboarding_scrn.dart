import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash_stateful.dart';
import 'package:flutter_application_1/sttful_Login.dart';
import 'package:introduction_screen/introduction_screen.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnBoardingEx(),
  ));
}

class OnBoardingEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: true,
      pages: [
        PageViewModel(
          title: "Page1",
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/guy.jpg")),
            body: "heloo folks"),

        PageViewModel(
          title: "Page1",
          image: Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/apple.png")),
            body: "Itlay the Land of pasta.Explore the unseen Italy with us"),
            
        PageViewModel(
          title: "Page1",
          image: Align(
            heightFactor:220 ,
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/italy.jpg",)),
            body: "Itlay the Land of pasta.Explore the unseen Italy with us"),

      ],

    onDone: () => Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => Splash2())),

    onSkip: () => Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => Stateful_Login())),

    skip: const Text("skip"),
    next: const Text("next"),
    done: const Text("continue"),

    skipStyle: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
    dotsDecorator: const DotsDecorator(
      size: Size(20, 20),
      activeColor: Colors.pinkAccent,
      activeShape: OvalBorder(),
      color: Colors.blue,

    ),
    );
  }
}