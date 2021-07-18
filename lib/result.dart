import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  const Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it!',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
