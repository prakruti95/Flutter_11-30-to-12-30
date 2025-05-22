import 'package:flutter/material.dart';
import 'package:selectionex/radiofile.dart';

import 'componentex.dart';

void main() {
  runApp(MaterialApp(home: CustomComponentsApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool a = false, b = false, c = false;
  int amount = 0;
  String data="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selection Tool"),
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
                title: Text("Pizza"),
                subtitle: Text("Rs.100"),
                value: a,
                onChanged: (value) {
                  setState(() {
                    this.a = value!;
                    data+="\n Pizza - Rs. 100";
                    if (this.a == true)
                      amount += 100;
                    else
                      amount -= 100;
                  });
                }),
            CheckboxListTile(
                title: Text("Burger"),
                subtitle: Text("Rs.70"),
                value: b,
                onChanged: (value) {
                  setState(() {
                    this.b = value!;
                    data+="\n Burger - Rs. 70";
                    if (this.b == true)
                      amount += 70;
                    else
                      amount -= 70;
                  });
                }),
            CheckboxListTile(
                title: Text("Coffee"),
                subtitle: Text("Rs.120"),
                value: c,
                onChanged: (value) {
                  setState(() {
                    this.c = value!;
                    data+="\n Coffee - Rs. 120";
                    if (this.c == true)
                      amount += 120;
                    else
                      amount -= 120;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  AlertDialog alertDialog = AlertDialog(
                    title: Text("Order List"),
                    content: Text("\n Your order total is: $data \n $amount Rs."),
                    actions: [],
                  );

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alertDialog;
                    },
                  );
                },
                child: Text("Order"))
          ],
        ),
      ),
    );
  }
}
