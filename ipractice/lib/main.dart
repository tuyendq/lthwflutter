import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _ColumnExample(),
    );
  }
}

class _ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
      ),
      body: Container(
        width: 600,
        color: const Color.fromARGB(100, 200, 200, 200),
        child: Column(
          //          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //          verticalDirection: VerticalDirection.up,
          //          crossAxisAlignment: CrossAxisAlignment.baseline,
          //          textBaseline: TextBaseline.alphabetic,
          //          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(
              size: 50,
            ),
            //            const Text('Flutter tutorial by woolha.com', style: const TextStyle(color: Colors.teal)),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.teal,
                child: const Center(
                  child: Text(
                    'Woolha.com is a blog about programming',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.widgets,
            ),
            const Text(
              'Yet another Text widget',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            ),
            const Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            ),
          ],
        ),
      ),
    );
  }
}
