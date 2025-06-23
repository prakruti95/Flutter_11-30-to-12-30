import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:miniproex/dashboard.dart';
import 'package:miniproex/signup.dart';
import 'package:http/http.dart' as http;

class SigninScreen extends StatefulWidget
{
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login Screen"),),
      body: Center
        (
        child: Column
          (
          children:
          [

            TextField(decoration: InputDecoration(hintText: "Enter Email"),controller: email,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Password"),controller: pass,),
            SizedBox(height: 10,),
            ElevatedButton(

                onPressed: ()
                {
                  String email1 = email.text.toString();
                  String pass1 = pass.text.toString();

                  login(email1,pass1);


                }, child:Text("Login")),

            TextButton(onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context) => SignupScreen()));
            }, child: Text("Do you want to signup?"))


          ],
        ),
      ),
    );
  }

   login(String email1,String pass1) async
   {
     var url = "https://prakrutitech.buzz/Fluttertestapi/signin.php";
     var resp = await http.post(Uri.parse(url),body:
     {
        "email":email1,
        "password":pass1
     });
     var data = json.decode(resp.body);

     if(data==0)
     {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Inavlid Credentials")));
     }
     else
     {
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen()));
     }
   }
}

