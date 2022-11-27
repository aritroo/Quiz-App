import 'package:flutter/material.dart';

class Answser extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answserText;

  Answser(this.selectHandler, this.answserText);

  Widget build(BuildContext context) {
    return Container(
      width: 165,
      child: ElevatedButton(
        child: Text(answserText),
        onPressed: selectHandler,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}
