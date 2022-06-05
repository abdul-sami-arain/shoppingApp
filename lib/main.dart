import 'package:flutter/material.dart';
import 'package:shoppingapp/frontPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color(0x7a2048),
        body: Center(child: LandingPage()),
      ),
    );
  }
}