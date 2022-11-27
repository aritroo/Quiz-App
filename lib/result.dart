import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Congrats You Made it!!',
          style: TextStyle(fontSize: 50, color: Colors.indigo)),
    );
  }
}
