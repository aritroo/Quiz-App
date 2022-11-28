import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String result_string;
    if (resultScore <= 8) {
      result_string =
          'You are awesome and innocent! & your score is $resultScore';
    } else if (resultScore <= 12) {
      result_string = 'Pretty likeable! & your score is $resultScore';
    } else if (resultScore <= 16) {
      result_string = 'You are ... strange?! & your score is $resultScore';
    } else {
      result_string = 'You are so bad! & your score is $resultScore';
    }
    return result_string;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
