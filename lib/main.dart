import 'package:flutter/material.dart';

import './question.dart';
import './buttonAnswer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen, $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite Instructor?',
        'answers': [
          'Dércio Derone',
          'Paulo Lopes',
          'Anderson Francisco',
          'Eduardo Jeremias'
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers']).map((answer) {
              return AnswerButton(_answerQuestion, answer);
            }),
          ],
        ),
      ),
    );
  }
}
