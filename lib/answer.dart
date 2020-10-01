import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function ans;
  final String ansText;
  Answer(this.ans, this.ansText);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.green,
        color: Colors.pink,
        child: Text(ansText),
        onPressed: ans,
      ),
    );
  }
}
