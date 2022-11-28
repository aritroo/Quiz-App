// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'Quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  List<Map<String, dynamic>> question = [
    {
      'questionText': 'What is your favorite colour?',
      'answsers': ['Black', 'Green', 'White'],
      'scores': [10, 20, 30]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answsers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      'scores': [10, 20, 30, 40]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answsers': ['Max', 'Max', 'Max'],
      'scores': [10, 20, 30]
    },
  ];

  void answserQuestion() {
    //var aBool = true;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz_App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dart Quiz"),
          ),
          body: questionIndex < question.length
              ? Quiz(
                  answerQuestion: answserQuestion,
                  questionIndex: questionIndex,
                  question: question,
                )
              : Result()),
    );
  }
}
