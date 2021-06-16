import 'package:flutter/material.dart';
import 'package:flutter_app2/utilities/drawer.dart';

class SingleGamePage extends StatelessWidget {
  const SingleGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets Play!"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(child: Text("Still Working On it!")),
      ),
    );
  }
}
