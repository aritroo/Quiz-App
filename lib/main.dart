// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'Question.dart';

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

  void answserQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What is your name?',
      'What is your fav colour?',
      'Where are you form?'
    ];
    return MaterialApp(
      title: "Quiz_App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dart Quiz"),
          ),
          body: Column(
            children: [
              Question(question[questionIndex]),
              ElevatedButton(
                onPressed: answserQuestion,
                child: Text('Answser 1'),
              ),
              ElevatedButton(
                  onPressed: answserQuestion, child: Text('Answser 2')),
              ElevatedButton(
                  onPressed: answserQuestion, child: Text('Answser 3')),
            ],
          )),
    );
  }
}
