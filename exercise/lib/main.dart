import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   // by using parentheses we are creating MyApp() instance we are instantiating
//   // MyApp widget class here
//   runApp(MyApp());
// }

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
  var questions = [
    'What is your favorite color?',
    'What\'s your favorite animal?',
    'What is your favourite pet name?',
    'What is your favourite person?',
    'What is your blood group?',
    'What is your blood group? longggggggggggggggggggggggggggggggggtextlongggggggggggggggggggggggggg very long'
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = 0;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: Center(
      //   // Text is a named argument for material app and inside text string is
      //   // a precisional arugment
      //   child: Text('Ali Adil'),
      // ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.only(top: 10.0, start: 12.0),
                  child: Question(questions[_questionIndex])),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // answerQuestion is the name of the function not the result of
                    // the function if we add parentheses in front of funtion it will
                    // execute
                    onPressed: _answerQuestion,
                    child: Text('Answer 1')),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // anonymous funtion  with no arguments
                    onPressed: () => print('Answer Question 2 '),
                    child: Text('Answer 2')),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // detialed anonymous funtion with no arguments
                    onPressed: () => {
                          //.... some other functionality
                          print('Answer number 3')
                        },
                    child: Text('Answer 3')),
              ),
            ],
          )),
    );
  }
}
