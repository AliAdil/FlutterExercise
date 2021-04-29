import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetApp;
  Result(this.resultScore, this.resetApp);

  String get resultPhrase {
    var resultText = 'You Did it!';

    if (resultScore <= 8) {
      resultText = "You are Lol";
    } else if (resultScore <= 12) {
      resultText = "Modrate scrole lol";
    } else if (resultScore <= 16) {
      resultText = "You are Good at it";
    } else {
      resultText = "AWESOME BOY";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(40.0),
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(
            "Your Score is " + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: resetApp,
            child: Text('Reset App'),
          )
        ],
      ),
    );
  }
}
