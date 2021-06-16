import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          // title: Text("Game-1"),
          ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "     Welcome \n  to the Game",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                textScaleFactor: 2.0,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image.asset(
                  "assets/images/home.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text("TAP TO START"),
                style: TextButton.styleFrom(minimumSize: const Size(140, 40)),
                // onPressed: () => movetoHome(context),
                // Navigator.pushNamed(context, MyRoutes.homeRoute);
                onPressed: () {
                  // if (_formkey.currentState?.validate() ?? true) {
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
