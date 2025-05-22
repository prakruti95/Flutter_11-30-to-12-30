import 'package:flutter/material.dart';
import 'package:widgetex123/firstdata.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home:Tops1());
  }
}
class FirstScreen extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("Tops Technologies")),
        body:Center
          (
            child:
              Column
                (
                  children:
                  [
                    ElevatedButton(onPressed: (){}, child: Text("Button 1")),
                    SizedBox(height: 20),
                    Text("Hello",style:TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold,color: Colors.green),)


                  ],
              )



          )
      );
  }
}

