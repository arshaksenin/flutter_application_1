import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView4(),));
}
class ListView4 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: Text("ListView Builder"),
      ),
      body:ListView.separated(
      itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(Icons.person_2),
          title: Text("Otis Milburn"),
        );
      },
      separatorBuilder: (context, index){
        if(index % 3 == 0){
        return const Divider(thickness: 4,color: Colors.blueAccent,);
        }else{
          return SizedBox();
        }
      },
      itemCount: 10)
      
    );
  }
}