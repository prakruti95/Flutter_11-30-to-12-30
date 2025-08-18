import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Onboarding extends StatefulWidget
{
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
{
  @override
  void initState()
  {
    // TODO: implement initState
   // super.initState();
    checkconnection();
  }
  void checkconnection()async
  {
    var connectivityresult = await Connectivity().checkConnectivity();

    if(connectivityresult.contains(ConnectivityResult.mobile))
    {

    }
    else if(connectivityresult.contains(ConnectivityResult.wifi))
    {

    }
    else
    {
      shownetworkerrordialog();
    }

  }
  void shownetworkerrordialog() async
  {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: kGrey,
          title: Row(children: [Icon(Icons.error),Text("\tNetwork Error")],),
          content: Text('Please check your internet connection.',style: TextStyle(fontStyle: FontStyle.italic)),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: Text("Exit",style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
