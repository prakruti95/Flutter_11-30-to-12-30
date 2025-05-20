import 'package:flutter/material.dart';

import 'navigationdrawerex.dart';

void main()
{
  runApp(MaterialApp(home:MyNavigationDrawer()));
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          title: Text("Widgets Example"),
           actions:
           [
              TextButton(onPressed: (){}, child: Text("Create"))

           ],

          ),
        body: SingleChildScrollView(
          child: Center
            (
              child: Column(
                children: [
                  FloatingActionButton
                    (
                      onPressed: ()
                      {
                          print("a");

                      },
                      child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("a");

                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("a");

                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("a");

                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("a");

                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("a");

                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 20,),
                  FloatingActionButton
                    (
                    onPressed: ()
                    {
                      print("b");

                    },
                    child: Icon(Icons.ac_unit_outlined),),
                ],
              ),
            ),
        ),
      floatingActionButton:FloatingActionButton(onPressed: () { print("test"); },) ,
      );
  }
}

