import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final is runtime constant value
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // cover entire availabe size
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28.0,
        ),
      ),
    );
  }
}
