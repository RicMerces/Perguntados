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

  void qtdResponder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _novaPergunta++;
      });
    }
  }

  // bool get temTodas => _novaPergunta >= _perguntas.length;
  // temTodas ? _novaPergunta = 0 :

  bool get temPerguntaSelecionada => _novaPergunta < _perguntas.length;

  void _responder() {
    print('Pergunta respondida');
    qtdResponder();
  }

  final List<Map<String, Object>> _perguntas = [
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
      'respostas': ['Matematica', 'Historia', 'Linguagens', 'Geografia']
    },
    {
      'texto': 'Onde Pelé jogou ?',
      'respostas': ['Bahia', 'São Paulo', 'Corinthians', 'Santos']
    },
  ];

  @override
  Widget build(BuildContext context) {
    // List<Widget> respostas = [];
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_novaPergunta].cast()['respostas']
        : [];
    List<Widget> widgets =
        respostas.map((texto) => BtnResposta(texto, _responder)).toList();

    // for (String textoResp in respostas) {
    //   // respostas.add(BtnResposta(textoResp, _responder));
    //   widgets.add(BtnResposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: [
                    Questao(
                      _perguntas[_novaPergunta]['texto'].toString(),
                    ),
                    // ...respostas
                    ...widgets
                  ],
                )
              : Center(
                  child: Text(
                    'Parabéns',
                    style: TextStyle(fontSize: 28),
                  ),
                )),
    );
  }
}

// class PergutarApp extends StatelessWidget {
//   PergutarApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {}
// }
