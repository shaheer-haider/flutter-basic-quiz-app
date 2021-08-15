import 'package:flutter/material.dart';

import './button.dart';

class Result extends StatelessWidget {
  final int currentScore;
  final Function _resetQuiz;

  Result(this.currentScore, this._resetQuiz);
  String get resultPhrase {
    String text;
    if (this.currentScore < 10)
      text = "You're so innocent.";
    else if (this.currentScore < 12)
      text = "You're ... Strange";
    else if (this.currentScore < 16)
      text = "You're a Pro";
    else
      text = "You're the best!";
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
      alignment: Alignment.center,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28),
          ),
          // Spacer(),
          Button(_resetQuiz, "Reset Quiz")
        ],
      ),
    );
  }
}
