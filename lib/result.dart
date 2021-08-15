import 'package:flutter/material.dart';

import './button.dart';

class Result extends StatelessWidget {
  final int currentScore;
  final Function _resetQuiz;

  Result(this.currentScore, this._resetQuiz);
  String get resultPhrase {
    String text;
    if (this.currentScore < 15)
      text = "You're so innocent.";
    else if (this.currentScore < 25)
      text = "You're ... Strange";
    else if (this.currentScore < 35)
      text = "You're a Pro";
    else
      text = "You're the best!";
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32),
          ),
          Button(_resetQuiz, "Reset Quiz")
        ],
      ),
    );
  }
}
