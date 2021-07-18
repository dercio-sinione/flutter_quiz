import 'package:flutter/material.dart';

import './question.dart';
import './buttonAnswer.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final questions;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers']).map((answer) {
          return AnswerButton(answerQuestion, answer);
        }),
      ],
    );
  }
}
