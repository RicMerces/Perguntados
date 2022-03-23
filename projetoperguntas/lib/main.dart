import 'package:flutter/material.dart';

void main() {
  runApp(PergutarApp());
}

class PergutarApp extends StatelessWidget {
  var novaPergunta = 0;

  int qtdResponder() {
    novaPergunta++;
    return novaPergunta;
  }

  void responder() {
    print('Pergunta respondida');
    qtdResponder();
  }

  final Perguntas = [
    'Qual o maior time do Nordeste ?',
    'Qual o time com mais mundiais ?',
    'Em que time jogou Garrincha ? ',
  ];

  PergutarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(
              Perguntas[novaPergunta > (Perguntas.length - 1)
                  ? novaPergunta = 0
                  : novaPergunta],
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Botao01'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Botao01'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Botao01'),
            ),
          ],
        ),
      ),
    );
  }
}
