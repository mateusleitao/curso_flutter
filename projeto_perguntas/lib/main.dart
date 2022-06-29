// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print('voce esta na pergunta ${perguntaSelecionada}');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual sua cor favorita',
      'Qual o seu animal favorito'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Opa'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Answer(
              text: 'Resposta 1',
              onSelect: responder,
            ),
            Answer(
              text: 'Resposta 2',
              onSelect: responder,
            ),
            Answer(
              text: 'Resposta 3',
              onSelect: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
