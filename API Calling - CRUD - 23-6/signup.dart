import 'package:flutter/material.dart';
import 'package:miniproex/main.dart';
import 'package:miniproex/signin.dart';
import 'package:http/http.dart' as http;


class SignupScreen extends StatefulWidget
{
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
{
  TextEditingController fname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  late String f,e,p;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(title: Text("Signup Screen"),),
      body: Center
        (
        child: Column
          (
          children:
          [
            TextField(decoration: InputDecoration(hintText: "Enter Firstname"),controller: fname,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Email"),controller: email,),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(hintText: "Enter Password"),controller: pass,),
            SizedBox(height: 10,),
            ElevatedButton(

                onPressed: ()
                {
                  f=fname.text.toString();
                  e=email.text.toString();
                  p=pass.text.toString();

                  signup(f,e,p);
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => SigninScreen()));

                }, child:Text("Signup")),
            TextButton(onPressed: ()
            {
                Navigator.push(context,MaterialPageRoute(builder: (context) => SigninScreen()));
            }, child: Text("Login?"))


          ],
        ),
      ),
    );
  }

  signup(String f,String e,String p)async
  {
      var url = "https://prakrutitech.buzz/Fluttertestapi/signup.php";
      var resp = await http.post(Uri.parse(url),body:
      {
        "firstname" : f,
        "email": e,
        "password": p
      });
      print(resp.toString());
  }
}

