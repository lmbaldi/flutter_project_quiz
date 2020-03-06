import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {

  final String text;
  final void Function() onSelected;

  Answer(this.text, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(text),
        onPressed: onSelected,
      ),
    );
  }
}
