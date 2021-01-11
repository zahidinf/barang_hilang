import 'package:barang_hilang/screens/login/login_screen.dart';
import 'package:barang_hilang/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => runApp(LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodySplashScreen(),
    );
  }
}
