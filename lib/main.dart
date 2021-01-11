import 'package:barang_hilang/screens/welcome/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'BarangHilang.com',
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
