import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    int days = 30;
    String message = "Welcome to $days days of flutter";
    return Scaffold(

        appBar: AppBar(
          title: Text("My App"),
        ),

        body: Center(
            child: Container(
                child: Text(message)
            )
        )
    );
  }
}