import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../constants.dart';
import '../onboarding_screen/onboardingscreen.dart';


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
    // TODO: implement initState


    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onboarding()
    )));
  }



  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        body: Center
          (
          child:  Lottie.asset('assets/anim.json'),
        ),
      );
  }
}
