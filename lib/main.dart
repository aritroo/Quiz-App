// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answser.dart';

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

  final question = const [
    {
      'questionText': 'What is your favorite colour?',
      'answsers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answsers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answsers': ['Max', 'Max', 'Max', 'Max'],
    }
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
            ? Column(
                children: [
                  Question(question[questionIndex]['questionText'] as String),
                  ...(question[questionIndex]['answsers'] as List<String>)
                      .map((answser) {
                    return Answser(answserQuestion, answser);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'You Did it',
                  style: TextStyle(fontSize: 45, color: Colors.indigo),
                ),
              ),
      ),
    );
  }
}
