import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widget1.dart';
import 'Widget2.dart';
import 'widgetex3.dart';
import 'widgetex4.dart';

class SingleFile extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title:Text("My Widgets"),),
        body: SingleChildScrollView(
          child: Column
                (
                  children:
                  [
                      Widget1(),
                      SizedBox(height: 10,),
                      Widget2(),
                      SizedBox(height: 10,),
                      WidgetEx3(),
                      SizedBox(height: 10,),
                      Footer(),
                      ElevatedButton(onPressed: ()
                      {
                          _makephonecall("9275003605");
                      }, child:Text("Call Us")),
                      ElevatedButton(onPressed: ()
                      {

                      }, child:Text("SMS Us")),
                  ],
                ),
        ),

      );
  }

  void _makephonecall(String s) async
  {
    var num = Uri.parse("tel:$s");
    // if(canLaunchUrl(num))
    // {
    //
    // }
    launchUrl(num);

  }

}


