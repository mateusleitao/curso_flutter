// TODO: Stateless Component

// TODO: Constructor = (text)

// TODO:  RaisedButton(
//               onPressed: _responder,
//               child: Text('Resposta 3'),
//             )

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: null,
        child: Text('Resposta 3'),
      ),
    );
  }
}
