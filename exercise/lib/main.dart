import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   // by using parentheses we are creating MyApp() instance we are instantiating
//   // MyApp widget class here
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// Every widget is a flutter class which have build method
class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer to my questions");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s favorite color?', 'What\'s your favorite animal'];
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
              Text('The questions!'),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 1')),
              ElevatedButton(onPressed: null, child: Text('Answer 2')),
              ElevatedButton(onPressed: null, child: Text('Answer 3')),
            ],
          )),
    );
  }
}
