import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Carousel(),
  ));
}

class Carousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      CarouselSlider(items: [

        Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/germany.jpg"),
          fit: BoxFit.fill))),

          Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/netherlands.jpg"),
          fit: BoxFit.fill))),

          Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/iceland.jpg"),
          fit: BoxFit.fill))),

          Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/croatia.jpg"),
          fit: BoxFit.fill))),

          Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/italy.jpg"),
          fit: BoxFit.fill))),

          Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/images/france.jpg"),
          fit: BoxFit.fill))),
      ],

      options: CarouselOptions(
       height:400,
       aspectRatio: 16/9,
       viewportFraction: 1,
       initialPage: 4,
       enableInfiniteScroll: true,
       autoPlay: true,
       autoPlayCurve: Curves.linear,
       pauseAutoPlayOnTouch: true,
       autoPlayInterval: const Duration(seconds: 4),
      )),
    );
  }
}