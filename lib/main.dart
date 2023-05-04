import 'package:flutter/material.dart';
import 'Widgets/Quiz/quiz.dart';
import 'Widgets/Quiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const[
    {
      'questionText': 'What\'s your favorite color?',
      'options': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 20},
        {'text': 'White', 'score': 30},
        {'text': 'Orange', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'options': [
        {'text': 'Dog', 'score': 40},
        {'text': 'Cat', 'score': 30},
        {'text': 'Horse', 'score': 20},
        {'text': 'Cow', 'score': 10},
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'options': [
        {'text': 'Dal', 'score': 40},
        {'text': 'Sabji', 'score': 30},
        {'text': 'Roti', 'score': 20},
        {'text': 'Chawal', 'score': 10},
      ]
    }
  ];

  void _answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz Application"),
          ),
          body: _questionIndex < _questions.length
            ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex
              )
              : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
