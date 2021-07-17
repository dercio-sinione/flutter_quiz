import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// Arrow Functions
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
          'What\'s your favorite programming language?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
