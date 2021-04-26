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
              Padding(
                  padding: EdgeInsetsDirectional.only(top: 10.0, start: 12.0),
                  child: Text('The questions!')),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    // answerQuestion is the name of the function not the result of
                    // the function if we add parentheses in front of funtion it will
                    // execute
                    onPressed: answerQuestion,
                    child: Text('Answer 1')),
              ),
              Padding(
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
              ),
            ],
          )),
    );
  }
}
