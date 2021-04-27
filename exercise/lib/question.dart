import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // cover entire availabe size
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      // margin: EdgeInsets.all(30),
      // padding: EdgeInsets.all(20),
      // decoration: BoxDecoration(
      //   color: Colors.indigo,
      //   border: Border.all(color: Colors.black),
      // ),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        // overflow: TextOverflow.ellipsis,
        style: TextStyle(
          // fontWeight: FontWeight.bold,
          fontSize: 28.0,
          // color: Colors.white,
          // //  decoration: TextDecoration.lineThrough,
          // decorationThickness: 2.5,
          // decorationColor: Colors.redAccent,
          // letterSpacing: 5.0,
          // backgroundColor: Colors.indigo,

          //fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
