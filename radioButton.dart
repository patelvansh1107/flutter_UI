import 'package:flutter/material.dart';

class MyRadioExample extends StatefulWidget {
  const MyRadioExample({super.key});

  @override
  State<MyRadioExample> createState() => _MyRadioExampleState();
}

class _MyRadioExampleState extends State<MyRadioExample> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Column(
        children: [
          Container(
            child: RadioListTile(
              title: Text("Male"),
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
              groupValue: gender,
              value: "Male",
            ),
          ),
          Container(
            child: RadioListTile(
              title: Text("Female"),
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
              groupValue: gender,
              value: "Female",
            ),
          )
        ],
      ),
    );
  }
}
