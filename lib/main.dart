import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/contact.dart';
import 'package:flutter_app2/pages/double_player_details.dart';
import 'package:flutter_app2/pages/game_page2.dart';
import 'package:flutter_app2/pages/profile.dart';
import 'package:flutter_app2/pages/quit.dart';
import 'package:flutter_app2/pages/setting.dart';
import 'package:flutter_app2/pages/single_player_mode.dart';
import 'package:flutter_app2/pages/welcome_screen.dart';
import 'package:flutter_app2/utilities/routes.dart';
import 'pages/login_page.dart';
import 'utilities/routes.dart';
import 'package:flutter_app2/pages/game_page.dart';
import 'package:flutter_app2/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return MaterialApp(
              // home: homePage(),
              themeMode: ThemeMode.dark,
              theme: ThemeData(primarySwatch: Colors.deepOrange),
              debugShowCheckedModeBanner: false,
              // darkTheme: ThemeData(brightness: Brightness.dark)
              // initialRoute: "/home", // initiasing will make it default
              routes: {
                "/": (context) => const WelcomePage(), //default
                MyRoutes.loginRoute: (context) => const LoginPage(),
                MyRoutes.homeRoute: (context) => const Homepage(),
                MyRoutes.gameRoute: (context) => GamePage(p1: "Pawan"),
                MyRoutes.SingleGameRoute: (context) => const SingleGamePage(),
                MyRoutes.ProfileRoute: (context) => const MyProfile(),
                MyRoutes.SettingRoute: (context) => SettingsScreen(),
                MyRoutes.ContactRoute: (context) => const MyContact(),
                MyRoutes.PlayerProfileRoute: (context) => const Playerinfo(),
                MyRoutes.S_PlayerProfileRoute: (context) =>
                    const S_Playerinfo(),
                MyRoutes.QuitRoute: (context) => const Quit(),
              },
            );
          },
        );
      },
    );
  }
}
