import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('initState Called.');
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    // String myMargin = '15';
    String myMargin = 'acb';
    double myMarginAsDouble;
    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }

    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       //Get the current location
      //       getLocation();
      //     },
      //     child: Text('Get Location'),
      //   ),
      // ),
      body: Container(
        margin: EdgeInsets.all(myMarginAsDouble ?? 30),
        color: Colors.red,
      ),
    );
  }
}
