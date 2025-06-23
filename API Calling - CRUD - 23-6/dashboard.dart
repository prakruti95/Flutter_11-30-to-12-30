import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'addproduct.dart';
import 'mydata.dart';

class DashboardScreen extends StatefulWidget
{
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Dashboard Screen"),),
        body: FutureBuilder
        (
        future: getdata(),

        builder: (BuildContext context, AsyncSnapshot<dynamic?> snapshot)
        {
          if(snapshot.hasError)
          {
            print("Network not found");
          }
          if(snapshot.hasData)
          {
            return MyData(list:snapshot.data);
          }

          return CircularProgressIndicator();
        },


      ),

        floatingActionButton: FloatingActionButton(onPressed: ()
        {

          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ProductAddScreen()));

        },child: Icon(Icons.add),),
    );
  }

  getdata()async
  {
    var url = Uri.parse("https://prakrutitech.buzz/Fluttertestapi/productview.php");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }
}
