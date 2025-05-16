import 'package:flutter/material.dart';

import 'dashboardscreen.dart';

class LoginScreen extends StatefulWidget
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Login Screen"),),
        body: Form
          (

            key: _formKey,
            child: Padding
              (
              padding: const EdgeInsets.all(18.0),
              child: Column
                (
                  children:
                  [
                      TextFormField(controller:email,decoration:InputDecoration(hintText: "Enter Email"),
                        validator:(value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter Proper Email';
                          }
                          return null;
                        },),
                      SizedBox(height: 10,),
                      TextFormField(controller:pass,decoration: InputDecoration(hintText: "Enter Password"),obscureText: true,
                        validator:(value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'Please enter Proper Password';
                          }
                          return null;
                        },

                      ),
                      SizedBox(height: 10,),
                      ElevatedButton(
                          onPressed: ()
                        {
                          if(_formKey.currentState!.validate())
                          {
                            String e = email.text.toString();
                            String p = pass.text.toString();

                            if(e == "tops@gmail.com" && p =="1234")
                            {
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashboardScreen(myemail: e)));
                            }
                            else
                            {
                              print("Error");
                            }
                          }

                      }, child:Text("Login"))


                  ],
                ),
            ),
          ),
      );
  }
}
