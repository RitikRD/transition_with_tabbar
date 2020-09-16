import 'package:flutter/material.dart';

class Right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "RIGHT",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
