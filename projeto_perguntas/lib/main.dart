// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
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
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            RaisedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            RaisedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
