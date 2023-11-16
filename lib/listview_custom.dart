import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: ListView4(),));
}

class ListView4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("List view Custom"),
      ),
      body: ListView.custom(
      //childrenDelegate:SliverChildListDelegate(
      //   [
      //   Card(child: Center(child: Text("Welcome"),),),
      //   Card(child: Center(child: Text("Welcome"),),),
      //   Card(child: Center(child: Text("Welcome"),),),
      //   Card(child: Center(child: Text("Welcome"),),),

      // ]
      //List.generate(10, (index) => Card(child: Center(child: Text("Welcome"),),),)
      childrenDelegate:SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/apple.png"),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name : Apple "),
                  Text("Unit : Kg "),
                  Text("Price : ₹220/kg "),
                ],
              ),
              MaterialButton(onPressed: (){},
              shape:const StadiumBorder() ,
              color: Colors.blue,
              minWidth: 120,
              height: 20,
              child: const Text("Add to cart"),  
             )
            ],
          ),
        )),
      ));
  }
}