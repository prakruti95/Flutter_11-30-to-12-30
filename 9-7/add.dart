import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasecrud/view.dart';
import 'package:flutter/material.dart';

import 'constraints/textfield.dart';

class AddScreen extends StatefulWidget
{
  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen>
{
  final _formkey = GlobalKey<FormState>();
  // text for textfield
  String email = '';
  String name = '';
  String password = '';
  // textfield
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  _clearText() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }
  CollectionReference insertUser = FirebaseFirestore.instance.collection('Students8');
  Future<void> _registerUser()
  {
    return insertUser
        .add({'Name': name, 'Email': email, 'Password': password})
        .then((value) => Navigator.push(context,MaterialPageRoute(builder: (context) => ViewScreen())))
        .catchError((_) => print('Something Error In registering User'));
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Add Screen"),),
        body: Form(
          key: _formkey,
          child: Center
            (
              child: ListView
                (

                  children:
                  [
                    CustomTextEditField(
                      controller: nameController,
                      labettxt: 'Name',
                    ),
                    CustomTextEditField(
                      controller: emailController,
                      labettxt: 'Email',
                      valid: true,
                    ),
                    CustomTextEditField(
                      controller: passwordController,
                      labettxt: 'Password',
                      visibility: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              setState(()
                              {
                                name = nameController.text.toString();
                                email = emailController.text.toString();
                                password = passwordController.text.toString();
                                _registerUser();
                                _clearText();
                               // Navigator.pop(context);
                                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ViewScreen()));
                              });
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green),
                          ),
                          child: const Text('Register'),
                        ),
                        ElevatedButton(
                          onPressed: ()
                          {

                          },
                          style: ButtonStyle
                            (
                              backgroundColor: MaterialStateProperty.all(Colors.red),
                            ),
                          child: const Text('Clear'),
                        ),
                        //TextFormField(dec)

                      ],
                    ),


                  ],
                ),


            ),
        ),
      );
  }
}
