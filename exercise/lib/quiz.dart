import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final questions;
  final int index;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsetsDirectional.only(top: 10.0, start: 12.0),
            // we are passing string value in question form list with
            // the help of index
            child: Question(questions[index]['questionText'])),
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        // it will return Answer widget and it will take
        // questions list item at _questionIndex with Key value of
        // 'answer' as List of String and map that string list and return
        // each value of answers as list
        // ... convert list as single item
        // ...(questions[index]['answers'] as List<String>).map((answer) {
        //   return Answer(answerQuestion, answer);
        // }).toList(),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          // return Answer(answerQuestion, answer['text']);
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
