import 'package:flutter/material.dart';

class MyTextExample extends StatelessWidget {
  const MyTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget Example"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          "Flutter",
          style: TextStyle(
              fontSize: 36,
              color: Colors.teal[200],
              fontWeight: FontWeight.bold),
        ),
        Text("Android"),
      ]),
    );
  }
}
