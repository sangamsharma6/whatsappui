import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.black,
          tabBarTheme: TabBarTheme(labelColor: Colors.white),
          textTheme: TextTheme(title: TextStyle(color: Colors.white,fontSize: 16.0),
          body1: TextStyle(
            color: Colors.black
          ),
          button: TextStyle(
            color: Colors.white
          )),
      bottomAppBarColor: Colors.white),
      home: Home(),
    );
  }
}
