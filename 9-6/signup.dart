import 'package:flutter/material.dart';
import 'package:jsonregisterlogin12/signin.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  String firstName = '';
  String lastName = '';
  String password = '';
  String mobile = '';
  String email = '';
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              buildTextField("First Name", (v) => firstName = v),
              buildTextField("Last Name", (v) => lastName = v),
              buildTextField("Password", (v) => password = v, isPassword: true),
              buildTextField("Mobile", (v) => mobile = v,
                  keyboardType: TextInputType.phone),
              buildTextField("Email", (v) => email = v),
              SizedBox(height: 10),
              Text("Gender", style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Radio<String>(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (value) => setState(() => gender = value!),
                  ),
                  Text("Male"),
                  Radio<String>(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (value) => setState(() => gender = value!),
                  ),
                  Text("Female"),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: ()  {
                  if (_formKey.currentState!.validate())
                  {
                        // print(firstName);
                        // print(lastName);
                        // print(email);
                        // print(mobile);
                        // print(gender);
                        // print(password);



                            var resp = http.post(Uri.parse("https://prakrutitech.buzz/Practical_Task/signup.php"),
                                body:
                                {

                                  "name":firstName,
                                  "surname":lastName,
                                  "email":email,
                                  "mobile":mobile,
                                  "gender":gender,
                                  "password":password,


                                });

                              print(resp.toString());
                        

                  }
                },
                child: Text("Signup"),
              ),
              SizedBox(height: 10,),
              TextButton(
                child: Text("signin?"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SigninScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, Function(String) onChanged,
      {bool isPassword = false,
        TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        obscureText: isPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
        value == null || value.isEmpty ? 'Enter $label' : null,
        onChanged: onChanged,
      ),
    );
  }
}