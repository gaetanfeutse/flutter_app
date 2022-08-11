// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      // ignore: sort_child_properties_last, prefer_const_constructors
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: selectHandler,
          // ignore: prefer_const_constructors
          child: Text(answerText)),
    );
  }
}
