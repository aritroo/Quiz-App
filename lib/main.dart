import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          Text('The Question ???'),
          ElevatedButton(
            onPressed: null,
            child: Text('Answser 1'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answser 2'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answser 3'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Answser 4'),
          ),
        ]),
      ),
    );
  }
}
