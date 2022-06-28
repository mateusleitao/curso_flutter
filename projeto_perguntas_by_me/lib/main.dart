// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var indexQuestion = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> questions = ['Pergunta 1', 'Pergunta 2'];

    void responder() {
      setState(() {
        indexQuestion++;
      });
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quizz do Lange'),
          ),
          body: Column(
            children: [
              Text(questions[indexQuestion]),
              RaisedButton(
                onPressed: responder,
                child: Text('Resposta 1'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Resposta 2'),
              ),
              RaisedButton(
                onPressed: null,
                child: Text('Resposta 3'),
              )
            ],
          )),
    );
  }
}
