import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen, $_questionIndex');
  }

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
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(),
            ),
          ],
        ),
      ),
    );
  }
}
