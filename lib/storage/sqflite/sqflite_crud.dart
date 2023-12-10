import 'package:flutter/material.dart';
import 'package:flutter_application_1/storage/sqflite/dboperations.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SqfliteCrud(),
  ));
}
class SqfliteCrud extends StatefulWidget {
  
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}

class _SqfliteCrudState extends State<SqfliteCrud> {
    final name_contrl = TextEditingController();
    final phone_contrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),),

        floatingActionButton: 
        FloatingActionButton(
          onPressed: () => Showsheet(null),
        child: Icon(Icons.add),
        ),
    );
  }

  Showsheet(int? id) {

    showModalBottomSheet(
      elevation: 5,
      isScrollControlled: true,
      context: context as BuildContext, builder: (context){
      return Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 15,
          bottom: MediaQuery.of(context).viewInsets.bottom+50
        ),
        child: Column(
          children: [
            TextField(
              controller: name_contrl,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: phone_contrl,
              decoration: InputDecoration(hintText: "Phone number"),
            ),

            ElevatedButton(onPressed: ()  async{

              if(id == null){ //to create contact
                // await create_contact();
              }

              if(id != null){ //to update contact 
                //await update_contact();
              }

            }, 
            child: Text(id == null ? "create" : "update"))
          ],
        ),
      );
  });
  }
  
 Future<void> create_contact() async{
  await SQLHelper.createContact(name_contrl.text,phone_contrl.text);
 } 
}
