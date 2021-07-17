import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print('Answer chosen, $questionIndex');
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
            Text(questions.elementAt(0)),
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
