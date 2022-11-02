import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/ikigai.png'),
              ),
              Text(
                'Learn . Practice . Share',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
