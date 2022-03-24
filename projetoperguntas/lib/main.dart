import 'package:flutter/material.dart';
import 'package:projetoperguntas/btn_resposta.dart';
import './questao.dart';

void main() {
  runApp(PergutarApp());
}

class PergutarApp extends StatefulWidget {
  const PergutarApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PergutarApp> {
  var novaPergunta = 0;

  int qtdResponder() {
    setState(() {
      novaPergunta++;
    });
    return novaPergunta;
  }

  void _responder() {
    print('Pergunta respondida');
    qtdResponder();
  }

  final Perguntas = [
    'Qual o maior time do Nordeste ?',
    'Qual o time Brasileiro com mais mundiais ?',
    'Em que time jogou Garrincha ? ',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(
              Perguntas[novaPergunta > (Perguntas.length - 1)
                  ? novaPergunta = 0
                  : novaPergunta],
            ),
            BtnResposta('Pergunta1', _responder),
            BtnResposta('Pergunta2', _responder),
            BtnResposta('Pergunta3', _responder),
            BtnResposta('Pergunta4', _responder),
          ],
        ),
      ),
    );
  }
}

// class PergutarApp extends StatelessWidget {
//   PergutarApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {}
// }
