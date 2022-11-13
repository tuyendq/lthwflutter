import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Screen 1'),
        TextButton(
          child: const Text('Go to Screen 0'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        TextButton(
          child: const Text('Go to Screen 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ],
    );
  }
}
