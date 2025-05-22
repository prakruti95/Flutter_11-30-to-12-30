import 'package:flutter/material.dart';

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
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome: ${widget.myemail}"))
      );
  }
}
