import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smart_women/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadScreen();
  }

  Future<Timer> loadScreen() async {
    return Timer(Duration(seconds: 2), _loadUI);
  }

  void _loadUI() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
      return SignUp();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(child: _showSplashScreen())),
    );
  }

  Widget _showSplashScreen() {
    return Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/SmartWomenLogo.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
