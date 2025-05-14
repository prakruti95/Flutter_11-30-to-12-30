import 'dart:ui';

import 'package:flutter/material.dart';

class Widget2 extends StatefulWidget
{
  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
    int _likes=0;

  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: const EdgeInsets.all(16.0),
      child: Column
              (
                children:
                [

                    Text("Likes: $_likes"),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                        setState(() {
                          _likes++;
                        });


                    }, child: Text("Like"))

                ],
              ),
    );
  }
}
