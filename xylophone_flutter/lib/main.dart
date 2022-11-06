import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('note1.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound();
                  // print('button pressed');
                },
                child: Container(
                  height: 20.0,
                  color: Colors.red,
                ),
              ),
              // Container(),
            ],
          ),
        ),
      ),
    );
  }
}
