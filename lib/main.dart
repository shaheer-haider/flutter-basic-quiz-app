import 'package:flutter/material.dart';

import './quizOptions.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _qA = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'Karachi', 'score': 12},
        {'text': 'Islamabad', 'score': 10},
        {'text': 'Lahore', 'score': 5},
        {'text': 'Quetta', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favorite fruit?',
      'answers': [
        {'text': 'Apple', 'score': 12},
        {'text': 'Banana', 'score': 8},
        {'text': 'Mango', 'score': 10},
        {'text': 'Grapes', 'score': 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerSelect(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _qA.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 75),
          child: _questionIndex < _qA.length
              ? QuizOptions(_answerSelect, _qA, _questionIndex)
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
