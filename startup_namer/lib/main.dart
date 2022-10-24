import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'iPractice',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('iPractice'),
        ),
        body: Center(
          // child: Text('Learn . Unlearn . Relearn'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
