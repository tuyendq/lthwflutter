import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iPractice',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('iPractice'),
        ),
        body: const Center(
          child: Text('Learn . Unlearn . Relearn'),
        ),
      ),
    );
  }
}
