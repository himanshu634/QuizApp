import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 8},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answerText': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answerText': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Burger', 'score': 3},
        {'text': 'Hotdog', 'score': 8}
      ]
    },
    {
      'questionText': 'what\'s your favorite car company? ',
      'answerText': [
        {'text': 'Audi', 'score': 10},
        {'text': 'Toyota', 'score': 3},
        {'text': 'Maruti', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite vehicle?',
      'answerText': [
        {'text': 'Bike', 'score': 10},
        {'text': 'car', 'score': 3},
        {'text': 'Truck', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answerText': [
        {'text': 'Ahemdabad', 'score': 10},
        {'text': 'Surat', 'score': 3},
        {'text': 'Baroda', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite mobile company?',
      'answerText': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Samsung', 'score': 3},
        {'text': 'Xiomi', 'score': 8}
      ]
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _resetHandler(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }
  _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Answer the question given below!!!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore,_resetHandler),
      ),
    );
  }
}
