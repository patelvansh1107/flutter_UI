import 'package:flutter/material.dart';

class RegistrationApp extends StatefulWidget {
  const RegistrationApp({super.key});

  @override
  State<RegistrationApp> createState() => _RegistrationAppState();
}

class _RegistrationAppState extends State<RegistrationApp> {
  showalertdialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Container(child: Text("Alert")),
      content: Text("Are you sure You Want to Submit"),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Continue")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"))
          ],
        )
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alert;
        });
  }

  String? gender;
  bool? age = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text('Registration Form'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            color: Colors.blue[400],
            margin: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Registration',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Full Name'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your full name',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Email Address'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Age'),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your Age',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Password'),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Select You Gender:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  RadioListTile(
                      value: 'male',
                      title: Text(
                        "Male",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      }),
                  RadioListTile(
                      value: 'Female',
                      title: Text(
                        "Female",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      }),
                  Row(
                    children: [
                      Checkbox(
                          value: age,
                          onChanged: (value) {
                            setState(() {
                              age = value!;
                            });
                          }),
                      Text(
                        "Do You have Driving License",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showalertdialog(context);
                          });
                        },
                        child: Text('Register'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
