import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key, @required this.color, this.cardChild})
      : super(key: key);

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        // color: Color(0xFF101E33),
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
