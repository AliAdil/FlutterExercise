import 'package:flutter/material.dart';

void main() {
  // Take my app instannce as argument MyApp()
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text('Ali Adil'),
      ),
    );
  }
}
