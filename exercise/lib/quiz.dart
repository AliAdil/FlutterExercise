import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestion;
  final List _questions;
  final int index;

  Quiz(this._answerQuestion, this._questions, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsetsDirectional.only(top: 10.0, start: 12.0),
            // we are passing string value in question form list with
            // the help of index
            child: Question(_questions[index]['questionText'])),
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        // it will return Answer widget and it will take
        // questions list item at _questionIndex with Key value of
        // 'answer' as List of String and map that string list and return
        // each value of answers as list
        // ... convert list as single item
        ...(_questions[index]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
