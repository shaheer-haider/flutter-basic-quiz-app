import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;
  // Constructor
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(20, 40, 20, 30),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
