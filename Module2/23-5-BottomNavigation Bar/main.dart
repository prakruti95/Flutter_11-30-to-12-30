import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedindex = 0;
  static const List<Widget> _widgetOptions = <Widget>
  [
    Text('First Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('second Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Third Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center
        (
        child: _widgetOptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: "FIRST",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "SECOND",
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "THIRD",
            backgroundColor: Colors.blueGrey,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        iconSize: 40,
        elevation: 5,
        onTap: _onItemTapped,
        currentIndex: _selectedindex,
        //backgroundColor: Colors.blueGrey,
      ),
    );
  }

  _onItemTapped(int value) {
    setState(() {
      _selectedindex = value;
    });
  }
}
