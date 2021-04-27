import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: null,
        child: Text('Answer 1'),
      ),
    );
  }
}
