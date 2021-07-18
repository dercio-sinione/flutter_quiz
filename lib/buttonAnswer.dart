import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  AnswerButton(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      child: ElevatedButton(
        child: Text(answer),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
