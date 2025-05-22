import 'package:flutter/material.dart';

import 'dashboardscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Screen"),),
        body: Center
          (
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [
                      TextField(controller:email,decoration:InputDecoration(hintText: "Enter Email"),),
                      SizedBox(height: 10,),
                      TextField(controller:pass,decoration: InputDecoration(hintText: "Enter Password"),obscureText: true,),
                      SizedBox(height: 10,),
                      ElevatedButton(onPressed: ()
                      {
                          String e = email.text.toString();
                          String p = pass.text.toString();

                          if(e == "tops@gmail.com" && p =="1234")
                          {
                             Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen(myemail:e)));
                          }
                          else
                          {
                            print("Error");
                          }
                          }, child:Text("Login"))


                  ],
                ),
            ),
          ),
      );
  }
}
