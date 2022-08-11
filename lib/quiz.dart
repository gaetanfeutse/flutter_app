import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // ignore: use_key_in_widget_constructors
  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            // (questions[_questionIndex] ['questionText'] as List<String>).toString(),
            questions[questionIndex]['questionText'] as String),
        // ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
        //   return Answer(answerQuestion, answer);
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
