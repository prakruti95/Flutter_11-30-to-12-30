import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonregisterlogin12/signup.dart';
import 'package:http/http.dart' as http;

class SigninScreen extends StatefulWidget
{
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
{
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Login"), centerTitle: true),
      body: Padding
        (
        padding: EdgeInsets.all(16),
        child: Form
          (
          key: _formKey,
          child: Column
            (
            children:
            [
              TextFormField
                (
                decoration: InputDecoration(labelText: "Email"),
                keyboardType: TextInputType.phone,
                validator: (value) =>
                value!.isEmpty ? "Enter Email" : null,
                onChanged: (value) => email = value,
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) =>
                value!.isEmpty ? "Enter password" : null,
                onChanged: (value) => password = value,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Login"),
                onPressed: () async
                {
                  if (_formKey.currentState!.validate())
                  {
                           var resp = await http.post(Uri.parse("https://prakrutitech.buzz/Practical_Task/signin.php"),body:
                            {
                              "email":email,
                              "password":password
                            });
                           var data = json.decode(resp.body);
                           //print("Mydata $data");
                           if(data==0)
                           {
                              print("fail");
                           }
                           else
                           {
                             print("success");
                           }

                  }

                },
              ),
              TextButton(
                child: Text("Don't have an account? Sign Up"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SignUpScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

