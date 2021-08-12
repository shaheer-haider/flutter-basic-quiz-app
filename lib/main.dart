import 'package:flutter/material.dart';
import './pages/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String message = "Welcome to $days days of flutter";
    return MaterialApp(
      home: Home()
    );
  }
}
