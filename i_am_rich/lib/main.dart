import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(Material(
    // ignore: prefer_const_constructors
    child: Center(
      child: const Text(
        textDirection: TextDirection.ltr,
        'Hello World! I am rich app.',
      ),
    ),
  ));
}
