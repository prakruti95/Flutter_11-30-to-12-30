import 'package:flutter/material.dart';

import 'add.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("View Detail"),),
        body: Center(),
      floatingActionButton: FloatingActionButton
        (
          onPressed: ()
          {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => AddScreen()));
          },
          child: Icon(Icons.add),
        ),
      );
  }
}
