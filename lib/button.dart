import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function btnFunc;
  final String btnText;
  Button(this.btnFunc, this.btnText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
      child: ElevatedButton(
        onPressed: () => btnFunc(),
        child: Text(
          btnText,
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 60),
        ),
      ),
    );
  }
}
