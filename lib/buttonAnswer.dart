import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;

  AnswerButton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
