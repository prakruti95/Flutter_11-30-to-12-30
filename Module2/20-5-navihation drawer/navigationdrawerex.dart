import 'package:flutter/material.dart';

class MyNavigationDrawer extends StatelessWidget
{
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Navigation Drawer"),),
        body: Center
          (
            child: Text
              (
                'A drawer is an invisible side screen.',
                style: TextStyle(fontSize: 20.0),
              )
        ),
        drawer: Drawer
            (
                  child: ListView
                    (
                      padding: EdgeInsets.zero,
                      children:
                      [
                          UserAccountsDrawerHeader
                            (
                              accountName: Text("Tops Tech"),
                              accountEmail: Text("tops@gmail.com"),
                              // currentAccountPicture:CircleAvatar
                              //   (
                              //   backgroundColor: Colors.orange,
                              //   child: Text
                              //     (
                              //       "A",
                              //       style: TextStyle(fontSize: 40.0),
                              //   ),
                              // )
                            ),
                        ListTile(
                          leading: Icon(Icons.home), title: Text("Home"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.settings), title: Text("Settings"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.contacts), title: Text("Contact Us"),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),



                      ],
                    ),
            ),
      );
  }
}
