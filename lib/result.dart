// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  // ignore: use_key_in_widget_constructors
  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'your are awerson and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Prety likeable';
    } else if (resultScore >= 16) {
      resultText = 'Your strange';
    } else {
      resultText = 'Your bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blue,
            child: const Text('reset quize'),
          ),
        ],
      ),
    );
  }
}
