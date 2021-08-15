import 'package:flutter/material.dart';

import './button.dart';
import './question.dart';

class QuizOptions extends StatelessWidget {
  final Function answerSelect;
  final List<dynamic> _qA;
  final _questionNum;
  QuizOptions(this.answerSelect, this._qA, this._questionNum);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_qA[_questionNum]["questionText"]),
        Spacer(),
        ...(_qA[_questionNum]["answers"].map((answer) {
          return Button(() => answerSelect(answer["score"]), answer["text"]);
        })),
      ],
    );
  }
}
