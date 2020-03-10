import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restartQuiz;

  Result(this.score, this.restartQuiz);

  String get result {
    if (score < 8) {
      return "Congratulations!";
    } else if (score < 12) {
      return "You are good!";
    } else if (score < 16) {
      return "Spectacular!";
    } else {
      return "Jedi level!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            result,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: restartQuiz,
          child: Text(
            "Restart?",
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
        ),
      ],
    );
  }
}
