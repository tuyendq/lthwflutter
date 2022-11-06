import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 20.0,
                  color: Colors.red,
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
