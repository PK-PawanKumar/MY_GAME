import 'package:flutter/material.dart';
// import 'package:flutter_app2/pages/game_page.dart';
import 'package:flutter_app2/utilities/routes.dart';
import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "TIC - TAC - TOE",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/option.png",
                  fit: BoxFit.cover,
                ),
                Title(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "-- SELECT GAME MODE --",
                      textScaleFactor: 2.0,
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                    child: Center(
                      child: ListTile(
                        leading: Icon(
                          CupertinoIcons.person_2,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Double Player Mode",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // child: Text("Double Player Mode",
                      //     style: TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     ),
                      // ),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, MyRoutes.gameRoute);
                      Navigator.pushNamed(context, MyRoutes.PlayerProfileRoute);
                    }),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                    child: Center(
                      child: ListTile(
                        leading: Icon(
                          CupertinoIcons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          "single Player Mode",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // child: Text("Double Player Mode",
                      //     style: TextStyle(
                      //     color: Colors.white,
                      //     fontWeight: FontWeight.bold,
                      //     ),
                      // ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                          context, MyRoutes.S_PlayerProfileRoute);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
