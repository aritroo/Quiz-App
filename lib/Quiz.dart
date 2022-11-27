import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answser.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> question;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz({
    required this.question,
    required this.answerQuestion,
    required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    int ll = question[questionIndex]['answsers'].length;

    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'].toString(),
        ),
        Answser(
            answerQuestion, question[questionIndex]['answsers'][0].toString()),
        Answser(
            answerQuestion, question[questionIndex]['answsers'][1].toString()),
        Answser(
            answerQuestion, question[questionIndex]['answsers'][2].toString()),
        Answser(
            answerQuestion, question[questionIndex]['answsers'][3].toString()),
      ],
    );
  }
}
