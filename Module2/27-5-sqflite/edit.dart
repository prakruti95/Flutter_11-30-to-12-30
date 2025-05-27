import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';

import 'main.dart';

class EditScreen extends StatefulWidget
{
    String email;
    EditScreen({required this.email});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen>
{
  MyDb db = MyDb();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState()
  {
    // TODO: implement initState
    db.open();

    Future.delayed(Duration(milliseconds: 500),()async
    {
      var data = await db.getstudent(widget.email);

      if(data!=null)
      {
        name.text = data["name"];
        email.text = data["email"];
        password.text = data["password"];
      }
      else
      {
        print("No any data with Email : " + widget.email.toString());
      }
    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Your Email ${widget.email}"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  TextField(controller: name,decoration: InputDecoration(hintText: "Enter Your Name"),),
                  SizedBox(height: 10,),
                  TextField(controller: email,decoration: InputDecoration(hintText: "Enter Your Email"),),
                  SizedBox(height: 10,),
                  TextField(controller: password,decoration: InputDecoration(hintText: "Enter Your Password"),obscureText: true,),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: ()
                  {
                    db.db.rawUpdate("Update students set name=?,email=?,password=? where email=?",[name.text.toString(),email.text.toString(),password.text.toString(),widget.email]);
                    print("Updated");
                    Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));

                  }, child: Text("Update"))


                ],
              ),
          ),
    );
  }
}
