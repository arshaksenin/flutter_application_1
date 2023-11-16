import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MonthsList(),));
}
class MonthsList extends StatelessWidget {
  var months =  ["January","February",
  "March","April","May","June","July",
  "August","September","October","November","December"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:ListView.separated(
      itemBuilder: (context, index) {
        return  Container(
          padding: EdgeInsets.only(top: 3,bottom: 3,),
          height: 40,width: 40,
          child: Card(
            margin: EdgeInsets.all(2),
            shape: RoundedRectangleBorder(),
            borderOnForeground: true,
            elevation: 30,
            child: Text(months[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100),),
          ),
        );
      },
      separatorBuilder: (context, index){
        if(index % 3 == 0){
        return  const Card(
          child: Text("Advertisement",style: TextStyle(fontSize: 20,color: Colors.white),),
          color: Colors.red,
        );
        }else{
          return SizedBox(height: 1,);
        }
      },
      itemCount: 12)
      
    );
  }
}