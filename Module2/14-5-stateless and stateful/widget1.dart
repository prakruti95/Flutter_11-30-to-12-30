import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget
{
  const Widget1({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
          padding: const EdgeInsets.all(16.0),
          child: Container
            (
                width:double.infinity,
                height:200,
                color: Colors.lightBlue.shade50,

                child: Row
                  (
                    children:
                    [
                        Column
                          (
                            children:
                            [
                                Center(

                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: CircleAvatar
                                      (
                                        radius: 50,
                                        backgroundImage: AssetImage("images/a.jpg",),
                                      ),
                                  ),
                                ),




                            ],
                          ),
                        SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column
                              (
                              children:
                              [
                                Text("Name",style: TextStyle(fontSize: 20.00),),
                                SizedBox(height: 10,),
                                Text("Number",style: TextStyle(fontSize: 15.00),),
                              ],
                              ),
                          )

                    ],





                  ),

            ),
    );
  }
}
