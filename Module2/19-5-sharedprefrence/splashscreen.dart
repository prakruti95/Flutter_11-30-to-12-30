import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget 
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
{

  @override
  void initState()
  {
    Timer(Duration(seconds: 3),() =>     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen())));

  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        body: Center
          (
            child:Lottie.asset('images/anim.json'),

        ),
      );
  }
}
