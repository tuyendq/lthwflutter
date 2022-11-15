import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Screen 2'),
        TextButton(
          child: const Text('Go to Screen 0'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        TextButton(
          child: const Text('Go to Screen 1'),
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
        ),
      ],
    );
  }
}
