import 'dart:io';

import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '354461a08029560d19b6e965d0584c9a';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    print('initState Called.');
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;
    print('Longitude: $longitude');
    print('Latitude:$latitude');
    getData();
  }

  void getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'));
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      var decodedData = jsonDecode(data);

      double longitude = decodedData['coord']['lon'];
      print(longitude);

      String weatherDescription = decodedData['weather'][0]['description'];
      print(weatherDescription);

      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];
      print('Temperature: $temperature');
      print(condition);
      print('CityName: $cityName');
    } else {
      print(response.statusCode);
    }
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
