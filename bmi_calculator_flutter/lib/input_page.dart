import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF101E33);
const bottomContainerHeight = 80.0;

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
                    color: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Color(0xFF101E33),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
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
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
              child: Text(
                'CALCULATE BMI',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({
    Key key,
    this.icon,
    this.label,
  }) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          // FontAwesomeIcons.mars,
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          // 'MALE',
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

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
