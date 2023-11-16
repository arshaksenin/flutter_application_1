import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Products(),));
}

class Products extends StatelessWidget {
  
  var images = [
  "assets/images/apple.png",
  "assets/images/mango.png",
  "assets/images/banana.png",
  "assets/images/grapes.png",
  "assets/images/watermelon.png",
  "assets/images/kiwi.png",
  "assets/images/orange.png",
  "assets/images/pineapple.png",

  ];

  var Items = [
    "Name : Apple",
    "Name : Mango",
    "Name : Banana",
    "Name : Grapes",
    "Name : Apple",
    "Name : Watermelon",
    "Name : Kiwi",
    "Name : orange",
    "Name : Pineapple",
  ];

  var Unit = [

    "Unit : Kg",
    "Unit : Doz",
    "Unit : Doz",
    "Unit : Kg",
    "Unit : Kg",
    "Unit : Pc",
    "Unit : Doz",
    "Unit : Pc",
  ];

  var Price = [
   "Price : ₹220",
   "Price : ₹180",
   "Price : ₹50",
   "Price : ₹110",
   "Price : ₹100",
   "Price : ₹200",
   "Price : ₹90",
   "Price : ₹170",

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      actions: const [
        Align(
          alignment: Alignment.topLeft,
          child: Badge(label: Text("0"),
          ),
        ),
      Padding(
        padding: EdgeInsets.only(right: 25),
        child: Icon(Icons.shopping_cart),
      )
      ],
    title: const Text("Products LIst"),
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 255, 0, 0),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15),
        child: ListView(
         children: List.generate(8, (index) => 
          SizedBox(height: 136,width: 200,
            child: Card(
              color:Color.fromARGB(95, 169, 169, 198),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(image: AssetImage(images[index]),),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(Items[index],style: TextStyle(fontWeight:FontWeight.bold),),
                        Text(Unit[index]),
                        Text(Price[index]),
                     ],
                    ),
                  ),
                  MaterialButton(onPressed: (){},
                  child: const Text("Add to cart"),
                  shape: Border(),
                  color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
          )
         )
    ));
  }
}