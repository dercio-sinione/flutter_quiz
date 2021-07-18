import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
        {
          'text': 'Black',
          'score': 5,
        },
        {
          'text': 'Red',
          'score': 10,
        },
        {
          'text': 'Green',
          'score': 15,
        },
        {
          'text': 'White',
          'score': 20,
        },
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 10,
        },
        {
          'text': 'Snake',
          'score': 5,
        },
        {
          'text': 'Elephant',
          'score': 15,
        },
        {
          'text': 'Lion',
          'score': 20,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite Instructor?',
      'answers': [
        {
          'text': 'Dércio Derone',
          'score': 20,
        },
        {
          'text': 'Paulo Lopes',
          'score': 10,
        },
        {
          'text': 'Anderson Francisco',
          'score': 15,
        },
        {
          'text': 'Eduardo Jeremias',
          'score': 5,
        },
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;
  void _fnAnswerQuestion(int score) {
    _totalScore += score;
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
              : Result(_totalScore)),
    );
  }
}
