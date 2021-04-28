import 'package:exercise/answer.dart';
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
  final questions = const [
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
  // void _answerQuestion() {
  //   setState(() {
  //     if (_questionIndex < questions.length - 1) {
  //       _questionIndex = _questionIndex + 1;
  //     } else {
  //       _questionIndex = 0;
  //     }
  //   });
  //   print(_questionIndex);
  // }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
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

      // home: Center(
      //   // Text is a named argument for material app and inside text string is
      //   // a precisional arugment
      //   child: Text('Ali Adil'),
      // ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsetsDirectional.only(top: 10.0, start: 12.0),
                      // we are passing string value in question form list with
                      // the help of index
                      child:
                          Question(questions[_questionIndex]['questionText'])),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    // Puttion your button here
                  ),
                  // it will return Answer widget and it will take
                  // questions list item at _questionIndex with Key value of
                  // 'answer' as List of String and map that string list and return
                  // each value of answers as list
                  // ... convert list as single item
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  /*  Padding(
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
              ),*/
                ],
              )
            : Center(
                child: Text('You Did it'),
              ),
      ),
    );
  }
}
