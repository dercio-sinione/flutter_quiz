import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String buttonText;

  AnswerButton(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 2),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        child: Text('Answer 1'),
        onPressed: null,
      ),
    );
  }
}
