import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  final String nm;
  const Practice({Key? key, required this.nm}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets Play!"),
      ),
      body: Container(
        child: Text(widget.nm),
      ),
    );
  }
}
