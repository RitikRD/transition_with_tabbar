import 'package:flutter/material.dart';

class Left extends StatefulWidget {
  @override
  _LeftState createState() => _LeftState();
}

class _LeftState extends State<Left> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "LEFT",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
