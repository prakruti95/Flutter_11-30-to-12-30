import 'package:flutter/material.dart';
import 'package:sqfliteex2/screens/homepage.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
        theme: ThemeData
          (
            primarySwatch: Colors.blue,

          ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      );
  }
}



