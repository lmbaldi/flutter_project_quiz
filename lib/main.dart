import 'package:flutter/material.dart';
import 'package:flutter_project_quiz/quiz.dart';
import 'package:flutter_project_quiz/result.dart';
import 'package:flutter_project_quiz/quiz.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {

  var _selectedQuestions = 0;
  var _totalScore = 0;

  void _respond(int score) {
    if (hasSelectedQuestions) {
      setState(() {
        _selectedQuestions++;
        _totalScore += score;
      });
    }
  }

  bool get hasSelectedQuestions{
    //size of list is always the last element of list minus one
    //means we have a selected question
    return _selectedQuestions < _questions.length;
  }

  final _questions = const [
    {
      'text': 'Which is your favorite color?',
      'answers': [
        {'text': 'black', 'score': 5},
        {'text': 'red', 'score': 4},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 2},
      ]
    },
    {
      'text': 'Which is your favorite animal?',
      'answers': [
        {'text':'rabbit', 'score': 5},
        {'text':'snake', 'score': 4 },
        {'text':'elephant', 'score': 3},
        {'text':'lion', 'score': 2},
      ]
    },
    {
      'text': 'Which is your favorite car?',
      'answers': [
       {'text':'Toyota', 'score': 3 },
       {'text':'Subaru', 'score': 5 },
       {'text':'Holden', 'score': 2 },
       {'text':'Porsche',  'score': 4},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: hasSelectedQuestions
            ? Quiz(
                questions: _questions,
                selectedQuestions: _selectedQuestions,
                respond: _respond,
              )
            : Result(),
      ),
    );
  }
}
