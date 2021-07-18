import 'package:flutter/material.dart';

import './question.dart';
import './buttonAnswer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final questions;
  // final List<Map<String, dynamic>> questions;
  final Function fnAnswerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.fnAnswerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers']).map((answer) {
          return AnswerButton(fnAnswerQuestion, answer);
        }),
      ],
    );
  }
}
