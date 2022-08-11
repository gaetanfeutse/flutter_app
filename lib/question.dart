import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String QuestionTest;

  // ignore: use_key_in_widget_constructors
  const Question(this.QuestionTest);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin:  EdgeInsets.all(9),
      child: Text(
        QuestionTest,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
