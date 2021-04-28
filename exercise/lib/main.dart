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
      'answers': ['Red', 'Blue', 'Green', 'Pink']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Rabit']
    },
    {
      'questionText': 'What is your favourite pet name?',
      'answers': ['Rabit', 'Dog', 'Cat', 'Chimp']
    },
    {
      'questionText': 'What is your favourite person?',
      'answers': ['ALi', 'Adil', 'Usman']
    },
    {
      'questionText': 'What is your blood group?',
      'answers': ['A+', 'B+', 'A', 'B']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                index: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
