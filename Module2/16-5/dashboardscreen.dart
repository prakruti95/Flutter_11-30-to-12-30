import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardScreen extends StatefulWidget
{
    String myemail;
    DashboardScreen({required this.myemail});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return WillPopScope
      (
        child:  Scaffold(
      appBar: AppBar(title: Text("Welcome: ${widget.myemail}")),
      body: Center
        (
              child: ElevatedButton(
                onPressed: ()
              {
                //  var _url = Uri.parse("mailto:feedback@geeksforgeeks.org");
                final Uri params = Uri
                  (
                  scheme: 'mailto',
                  path: 'email@example.com',
                  query: 'subject=App Feedback&body=App Version 3.23', //add subject and body here
                  );
                
                var url = params.toString();
                launchUrl(Uri.parse(url));

              }, child: Text("Send Email"),),
        ),

    ),
        onWillPop:()async
      {
            showAlertDialog(context);
            return false;
      });

  }

  showAlertDialog(BuildContext context)
  {
    Widget yesbutton = ElevatedButton(
      child: Text("YES"),
      onPressed: () {

        exit(0);

      },
    );

    Widget nobutton = ElevatedButton(
      child: Text("NO"),
      onPressed: () {
        Navigator.pop(context);
      },
    );



    AlertDialog alertDialog = AlertDialog(title:Text("Want to Go Back?"),content:Text("Are you sure you want to exit?"),
        actions:
        [
              yesbutton,
              nobutton

        ],);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
