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
      'What\'s your favorite animal?',
      'What\'s your favorite programming language?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            ElevatedButton(
              onPressed: () => print(questions[0]),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print(questions[1]),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print(questions[2]),
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
