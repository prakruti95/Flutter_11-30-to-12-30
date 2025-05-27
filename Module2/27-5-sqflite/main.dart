import 'package:flutter/material.dart';
import 'package:sqfliteex1/db.dart';
import 'package:sqfliteex1/edit.dart';
import 'addpage.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  MyDb db = MyDb();
  List<Map> slist = [];
  @override
  void initState()
  {
    // TODO: implement initState
    db.open();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite Example"),
      ),
      body: SingleChildScrollView
        (
          child: Column
            (
              children:slist.map((stuone)
              {
                return Card
                  (
                    child: ListTile
                      (
                      leading:Icon(Icons.person),
                      title: Text(stuone["name"]),
                      subtitle:Text(stuone["email"]),
                      trailing: Wrap
                        (
                          children:
                          [

                              IconButton(onPressed: ()
                              {
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EditScreen(email:stuone["email"])));
                              }, icon: Icon(Icons.update)),
                              IconButton(onPressed: ()
                              {
                                  db.db.rawDelete("delete from students where email = ?",[stuone["email"]]);
                                  print("deleted");
                                  getdata();
                              }, icon: Icon(Icons.delete)),

                          ],

                        ),
                    )
                );
              }).toList()
            )

        ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void getdata()
  {
    Future.delayed(Duration(milliseconds: 500),()async
    {
      slist = await db.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });
  }
}
