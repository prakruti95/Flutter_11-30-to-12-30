import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(home:FirstScreen(),debugShowCheckedModeBanner: false,);
  }

}
  class FirstScreen extends StatelessWidget
  {
    @override
    Widget build(BuildContext context)
    {
      return Scaffold
      (
        appBar: AppBar(title: Text("First Screen"),backgroundColor: Colors.blueGrey,foregroundColor: Colors.white,),
        body: Center
          (
            child: Text("Hello World"),
          ),
        );
  }

}

