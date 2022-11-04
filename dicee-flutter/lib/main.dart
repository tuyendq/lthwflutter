import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 1;
    var rightDiceNumber = 1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  leftDiceNumber = 5;
                  print(
                      'Left image was pressed. leftDiceNumber is $leftDiceNumber');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  rightDiceNumber = 5;
                  print(
                      'Right button was pressed. rightDiceNumber is $rightDiceNumber');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
