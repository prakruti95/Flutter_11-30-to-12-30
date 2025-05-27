import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';
import 'package:sqfliteex1/main.dart';

class AddPage extends StatefulWidget
{
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage>
{

  MyDb db = MyDb();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    db.open();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add Details"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField(controller:name,decoration: InputDecoration(hintText: "Enter Name"),),
                    SizedBox(height: 15),
                    TextField(controller:email,decoration: InputDecoration(hintText: "Enter Email"),),
                    SizedBox(height: 15),
                    TextField(controller:password,decoration: InputDecoration(hintText: "Enter Password"),),
                    SizedBox(height: 15),
                    ElevatedButton(onPressed: ()
                    {
                      db.db.rawInsert("insert into students(name,email,password) values(?,?,?)",[name.text.toString(),email.text.toString(),password.text.toString()]);
                      print("Inseretd");
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MyApp()));

                   }, child: Text("Add"))




                ],
              ),
          ),
      );
  }
}
