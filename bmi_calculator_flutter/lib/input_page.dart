import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;

  const ReusableCard({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200.0,
      // width: 170.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // color: Color(0xFF101E33),
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
