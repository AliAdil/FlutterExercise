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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // Text is a named argument for material app and inside text string is
        // a precisional arugment
        child: Text('Ali Adil'),
      ),
    );
  }
}
