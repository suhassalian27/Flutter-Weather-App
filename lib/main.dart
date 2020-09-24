import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatefulWidget {
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int temperature = 0;
  String location = "Mumbai";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/clear.png'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    temperature.toString() + " 'C",
                    style: TextStyle(color: Colors.white, fontSize: 60.0),
                  ),
                ),
                Center(
                  child: Text(
                    location,
                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 300,
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                    decoration: InputDecoration(
                        hintText: 'Search another location...',
                        hintStyle:
                            TextStyle(color: Colors.white, fontSize: 18.0),
                        prefix: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
