import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);
  String get resultPhrase {
    String x;
    if (score < 30) {
      x = 'You are good';
    } else if (score < 60) {
      x = 'yYou are better';
    } else if (score <= 91) {
      x = 'you are marvelous!!';
    }
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text(
              'reset quiz!!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: resetHandler,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
