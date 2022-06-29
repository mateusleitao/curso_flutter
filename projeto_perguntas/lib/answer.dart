// ignore_for_file: prefer_const_constructors
// TODO: Stateless Component

// TODO: Constructor = (text)

// TODO:  RaisedButton(
//               onPressed: _responder,
//               child: Text('Resposta 3'),
//             )

import 'package:flutter/material.dart';
import 'main.dart';
import 'question.dart';

class Answer extends StatelessWidget {
  Answer({Key? key, required this.text, required this.onSelect})
      : super(key: key);

  final String text;
  final void Function() onSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onSelect,
        child: Text(text),
      ),
    );
  }
}
