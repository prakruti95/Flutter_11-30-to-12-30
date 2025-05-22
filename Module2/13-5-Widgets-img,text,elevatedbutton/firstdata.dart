import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetex123/seconddata.dart';

class Tops1 extends StatelessWidget
{
  const Tops1({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Tops 1"),),
        body: SingleChildScrollView(
          child: Center
            (
              child: Column(
                children: [
          
                  Image.asset("images/a.jpg",width: 150,height: 150,),
                  //Image.network("https://jagsfresh-bucket.s3.amazonaws.com/media/package/img_three/2020-12-28/Amul_Butter_-_Pasteurised_100g_01.jpg",width: 150,height: 150),
                  Text("Amul Butter"),
          
                  Image.network("https://www.shutterstock.com/image-photo/new-delhi-india-may-2022-600nw-2163953449.jpg",width: 150,height: 150),
                  Text("Milk"),
          
                  Image.network("https://jagsfresh-bucket.s3.amazonaws.com/media/package/img_three/2020-12-28/Amul_Butter_-_Pasteurised_100g_01.jpg",width: 150,height: 150),
                  Text("Amul Butter"),
          
                  Image.network("https://www.shutterstock.com/image-photo/new-delhi-india-may-2022-600nw-2163953449.jpg",width: 150,height: 150),
                  Text("Milk"),
          
                  Image.network("https://jagsfresh-bucket.s3.amazonaws.com/media/package/img_three/2020-12-28/Amul_Butter_-_Pasteurised_100g_01.jpg",width: 150,height: 150),
                  Text("Amul Butter"),
          
                  Image.network("https://www.shutterstock.com/image-photo/new-delhi-india-may-2022-600nw-2163953449.jpg",width: 150,height: 150),
                  Text("Milk"),
          
          
          
                  ElevatedButton
                    (
                      onPressed: ()
                      {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Tops2()));
                      },
                      //push - you can go back using arrow
                      //pushreplacement - you can't go back using arrow
                    child:Text("Click Me"),
                  ),
          
          
          
                ],
              ),
            ),
        ),
      );
  }
}
