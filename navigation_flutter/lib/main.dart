import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen0.dart';
import 'package:navigation_flutter/screen1.dart';
import 'package:navigation_flutter/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      // home: Text('Home page'),
      // home: Screen0(),
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
      },
    );
  }
}
