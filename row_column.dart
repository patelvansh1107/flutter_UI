import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows and cols'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.deepPurple[600],
              alignment: Alignment.center,
              child: Text('#8D4383'),
            ),
          ),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.greenAccent[700],
                      alignment: Alignment.center,
                      child: Text('#2AA650'),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.blue[800],
                              alignment: Alignment.center,
                              child: Text('#2AA650'),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              color: Colors.red[700],
                              alignment: Alignment.center,
                              child: Text('#2AA650'),
                            ),
                          ),
                        ],
                      )),
                ],
              )),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text('#2AA650'),
            ),
          ),
        ],
      ),
    );;
  }
}