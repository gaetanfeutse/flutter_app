// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

// void main(){
// runApp(const MyApp());
// }

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is your favorite animale',
      'answers': [
        {'text': 'dog', 'score': 12},
        {'text': 'cat', 'score': 8},
        {'text': 'lion', 'score': 10},
        {'text': 'rate', 'score': 3},
      ],
    },
    {
      'questionText': 'what is your favorite color',
      'answers': [
        {'text': 'blue', 'score': 15},
        {'text': 'red', 'score': 2},
        {'text': 'yellow', 'score': 12},
        {'text': 'white', 'score': 1},
      ],
    },
    {
      'questionText': 'what is your best programing Language',
      'answers': [
        {'text': 'python', 'score': 11},
        {'text': 'C++', 'score': 8},
        {'text': 'javascript', 'score': 12},
        {'text': 'php', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuize() {
    setState(() {
      
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // ignore: unused_element
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // ignore: avoid_print
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('we have more question!');
    } else {
      // ignore: avoid_print
      print('No more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
