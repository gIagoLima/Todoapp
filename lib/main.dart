import 'dart:async';
import 'package:app_demonster/views/home/homepage.dart';
import 'package:app_demonster/views/todoPage/todoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => new HomePage(),
        "/splash": (context) => new Splash(),
        "/todopage": (context) => new TodoPage(),
      },
      home: Splash()));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4, milliseconds: 400), () {
      Navigator.popAndPushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/splash.gif',
        fit: BoxFit.fill,
      ),
    );
  }
}
