import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../screens/addcontact.dart';
import '../screens/homepage.dart';
import '../screens/viewcontact.dart';

class MyDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Container
        (
          margin: EdgeInsets.only(top: 55),
          child: Drawer
            (
            backgroundColor: MyColors.drawalBackground,
            child: ListView
              (
              padding: EdgeInsets.zero,
              children:
              [
                ListTile(
                  title: const Text(
                    'Add Category',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                ),
                Divider(
                  color: MyColors.drawalDivider,
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: const Text(
                    'Add Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => AddContact()));
                  },
                ),
                Divider(
                  color: MyColors.drawalDivider,
                  height: 2,
                  thickness: 2,
                ),
                ListTile(
                  title: const Text(
                    'Contact List',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ContactList()));
                  },
                ),
                Divider(
                  color: MyColors.drawalDivider,
                  height: 2,
                  thickness: 2,
                ),

              ],

              )
            ),
        );
  }

}