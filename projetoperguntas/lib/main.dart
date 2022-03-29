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
  var _novaPergunta = 0;

  int qtdResponder() {
    setState(() {
      _novaPergunta++;
    });
    return _novaPergunta;
  }

  void _responder() {
    print('Pergunta respondida');
    qtdResponder();
  }

  final List<Map<String, Object>> Perguntas = [
    {
      'texto': 'Qual é a sua cor favorita',
      'respostas': ['Azul', 'Vermelho', 'Branco', 'Preto']
    },
    {
      'texto': 'Qual seu animal favorito',
      'respostas': ['Cachorro', 'Gato', 'Lobo', 'Leão']
    },
    {
      'texto': 'Qual sua materia escolar favorita',
      'resposta': ['Matematica', 'Historia', 'Linguagens', 'Geografia']
    },
  ];

  @override
  Widget build(BuildContext context) {
    var novaPergunta = _novaPergunta;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            // Questao(
            //   // Perguntas[novaPergunta]['texto'].toString(),
            // ),
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
