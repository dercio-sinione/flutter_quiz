import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite programming language?',
  ];

  void answerQuestion(int questsionNumber) {
    print(questions[questsionNumber]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(0)),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(0),
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(1),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(2),
            ),
          ],
        ),
      ),
    );
  }
}
