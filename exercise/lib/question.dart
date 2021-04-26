import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo,
        border: Border.all(color: Colors.black),
      ),
      child: Text(
        questionText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          color: Colors.white,
          //  decoration: TextDecoration.lineThrough,
          decorationThickness: 2.5,
          decorationColor: Colors.redAccent,
          letterSpacing: 5.0,
          backgroundColor: Colors.indigo,
          //fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
