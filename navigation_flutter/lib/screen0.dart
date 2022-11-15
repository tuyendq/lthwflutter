import 'package:flutter/material.dart';

import 'screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Screen 0'),
        TextButton(
          child: const Text('Go to Screen 1'),
          onPressed: () {
            Navigator.pushNamed(context, '/first');
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
