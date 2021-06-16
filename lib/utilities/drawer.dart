import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.clipartkey.com/mpngs/m/197-1971414_avatars-clipart-generic-user-user-profile-icon.png";
    return Drawer(
      child: Container(
        color: Colors.deepOrange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Pawan Kumar"),
                accountEmail: Text("pawan.kumar.ece20@itbhu.ac.in"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // title: Text(
              //   "Home",
              //   textScaleFactor: 1.2,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              title: TextButton(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // title: Text(
              //   "Profile",
              //   textScaleFactor: 1.2,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              title: TextButton(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.ProfileRoute);
                },
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              // title: Text(
              //   "Settings",
              //   textScaleFactor: 1.2,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              title: TextButton(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Settings",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.SettingRoute);
                },
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // title: Text(
              //   "Contact Us",
              //   textScaleFactor: 1.2,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              title: TextButton(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contact",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.ContactRoute);
                },
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bed_double,
                color: Colors.white,
              ),
              // title: Text(
              //   "Quit",
              //   textScaleFactor: 1.2,
              //   style: TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              title: TextButton(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Quit",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  // Navigator.pushNamed(context, MyRoutes.QuitRoute);
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    exit(0);
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
