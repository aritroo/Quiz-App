import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void answserQuestions()
  {
      print("Answser Choosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite Colour?',
      'What is your favourite Animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Test Quiz'),
        ),
        body: Column(children: [
          const Text('The Question ???'),
          ElevatedButton(
            onPressed: answserQuestions,
            child: const Text('Answser 1'),
          ),
          ElevatedButton(
            onPressed: answserQuestions,
            child: const Text('Answser 2'),
          ),
          ElevatedButton(
            onPressed: answserQuestions,
            child: const Text('Answser 3'),
          ),
          ElevatedButton(
            onPressed: answserQuestions,
            child: const Text('Answser 4'),
          ),
        ]),
      ),
    );
  }
}
