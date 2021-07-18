import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final questions;

  const Quiz({Key? key, this.questions, this.questionIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText']),
        ...(_questions[_questionIndex]['answers']).map((answer) {
          return AnswerButton(_answerQuestion, answer);
        }),
      ],
    );
  }
}
