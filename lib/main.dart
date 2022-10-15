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
          title:  Text('Personality Test Quiz'),
          backgroundColor: Color.fromARGB(255, 223, 204, 34),
        ),
        body: Column(children: [
           Text(questions.elementAt(1)),
          ElevatedButton(
            onPressed: answserQuestions,
            child:  Text('Answser 1'),
          ),
          ElevatedButton(
            onPressed: answserQuestions,
            child:  Text('Answser 2'),
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
        backgroundColor: Color.fromARGB(255, 43, 224, 19),
      ),
    );
  }
}
