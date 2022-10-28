import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()
      // const Center(
      //   child: Text(
      //     '"Everything is practice." — Pelé',
      //     textDirection: TextDirection.ltr,
      //   ),
      // ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text(
    //     '"Everything is practice." — Pelé',
    //     textDirection: TextDirection.ltr,
    //   ),
    // );

    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Text(
              '"Everything is practice." — Pelé',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
