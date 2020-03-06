import 'package:flutter/material.dart';
import 'package:flutter_project_quiz/question.dart';
import 'package:flutter_project_quiz/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestions;
  final void Function(int) respond;

  Quiz({
    @required this.questions,
    @required this.selectedQuestions,
    @required this.respond,
  });

  bool get hasSelectedQuestions{
    //size of list is always de last element of list minus one
    //means we have a selected question
    return selectedQuestions < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        hasSelectedQuestions? questions[selectedQuestions]['answers'] : null;

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestions]['text']),
        ...answers.map((resp) {
          return Answer(resp['text'], () => respond(resp['score']));
        }).toList()
//            ...widgets,
      ],
    );
  }
}
