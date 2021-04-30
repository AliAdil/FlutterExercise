import 'package:exercise/quiz.dart';
import 'package:exercise/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

// Every widget is a flutter class which have build method
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // class wide variable are called properties
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Pink', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabit', 'score': 3},
        {'text': 'Hen', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favourite pet name?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabit', 'score': 3},
        {'text': 'Hen', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your favourite person?',
      'answers': [
        {'text': 'Ali', 'score': 10},
        {'text': 'Adil', 'score': 5},
        {'text': 'Wasif', 'score': 3},
        {'text': 'Majid', 'score': 1}
      ]
    },
    {
      'questionText': 'What is your blood group?',
      'answers': [
        {'text': 'A+', 'score': 10},
        {'text': 'B+', 'score': 5},
        {'text': 'A', 'score': 3},
        {'text': 'B', 'score': 1}
      ]
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

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('We have more question');
    } else {
      print('We dont have any other questions');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: SingleChildScrollView(
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  index: _questionIndex,
                  totalScore: _totalScore,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
