// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final List<Map<String, dynamic>> perguntas = [
      {
        'texto': 'Qual sua cor favorita',
        'resposta': ['Preto', 'Vermelho', 'Preto', 'Branco']
      },
      {
        'texto': 'Qual seu animal favorito',
        'resposta': ['Coelho', 'Cobra', 'Elefante', 'Leao'],
      },
      {
        'texto': 'Qual seu instrutor favorito',
        'resposta': ['Mateus', 'Leo', 'Ferreira', 'Matheus'],
      }
    ];
    for (var textoResp in perguntas[perguntaSelecionada]['resposta']) {
      print(textoResp);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz',
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
          ),
          actions: <Widget>[
            IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.density_medium,
                color: Colors.black,
                size: 30.0,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.grey[350],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              Text(
                'Quiz do Lange',
                style: GoogleFonts.trispace(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Questao(perguntas[perguntaSelecionada]['texto'] as String),
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
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
