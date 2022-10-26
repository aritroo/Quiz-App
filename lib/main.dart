import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answserQuestions()
  {
    setState(() {
      _questionIndex = _questionIndex + 1;  
    });
    
      
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
           Text(
            questions[_questionIndex]
            ),
          ElevatedButton(
            onPressed: _answserQuestions,
            child:  Text('Red'),
            
          ),
          ElevatedButton(
            onPressed: _answserQuestions,
            child:  Text('Answser 2'),
          ),
          ElevatedButton(
            onPressed: _answserQuestions,
            child: const Text('Answser 3'),
          ),
          ElevatedButton(
            onPressed: _answserQuestions,
            child: const Text('Answser 4'),
          ),
        ]),
        backgroundColor: Color.fromARGB(255, 43, 224, 19),
      ),
    );
  }
}
