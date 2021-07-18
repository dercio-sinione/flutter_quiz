import 'package:flutter/material.dart';

import './question.dart';
import './buttonAnswer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _questions = const [
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

  int _questionIndex = 0;

  void _fnAnswerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen, $_questionIndex');
    if (_questionIndex < _questions.length) {
      print('You have more question!');
    } else {
      print('You have more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                fnAnswerQuestion: _fnAnswerQuestion)
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
