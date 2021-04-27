import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // select handler is a pointer at a function in main.dart file
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.blue,
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}
