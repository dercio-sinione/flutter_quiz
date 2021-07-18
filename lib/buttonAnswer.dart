import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function fnSelectHandler;
  final String answerText;

  AnswerButton(this.fnSelectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () => fnSelectHandler(),
      ),
    );
  }
}
