import 'package:flutter/material.dart';
import 'package:questions/btn_resposta.dart';
import 'package:questions/questionario.dart';
import 'package:questions/resultado.dart';
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
      'texto': 'Qual a minha cor favorita',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Branco', 'nota': 0},
        {'texto': 'Azul', 'nota': 0},
        {'texto': 'Verde', 'nota': 0},
      ],
    },
    {
      'texto': 'Qual é minha serie favorita',
      'respostas': [
        {'texto': 'Peaky Blinders', 'nota': 5},
        {'texto': 'Vikings', 'nota': 10},
        {'texto': 'The last Kingdoom', 'nota': 2.5},
        {'texto': 'Mandalorian', 'nota': 5},
      ],
    },
    {
      'texto': 'Qual é meu filme favorito',
      'respostas': [
        {'texto': 'Rei Leão', 'nota': 0},
        {'texto': 'Batman o cavaleiro das trevas', 'nota': 0},
        {'texto': 'Homem Aranha sem volta para casa', 'nota': 0},
        {'texto': 'Avatar', 'nota': 10},
      ],
    },
    {
      'texto': 'Qual o meu time do coração',
      'respostas': [
        {'texto': 'Cruzeiro', 'nota': 0},
        {'texto': 'Santos', 'nota': 0},
        {'texto': 'Bahia', 'nota': 10},
        {'texto': 'Vasco da Gama', 'nota': 0},
      ],
    },
    {
      'texto': 'Qual o meu jogo favorito',
      'respostas': [
        {'texto': 'Raimbow Six Siege', 'nota': 2.5},
        {'texto': 'The last of us part 2', 'nota': 2.5},
        {'texto': 'Far Cry 4', 'nota': 10},
        {'texto': 'Resident Evil 5', 'nota': 2.5},
      ],
    },
    {
      'texto': 'Qual o meu anime favorito',
      'respostas': [
        {'texto': 'Vinland Saga', 'nota': 5},
        {'texto': 'Sword art Online', 'nota': 0},
        {'texto': 'Naruto Shippuden', 'nota': 5},
        {'texto': 'Jojo bizarre adventures', 'nota': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // List<Widget> respostas = [];
    // List<String> respostas = temPerguntaSelecionada
    //     ? _perguntas[_novaPergunta].cast()['respostas']
    //     : [];
    // List<Widget> widgets =
    //     respostas.map((texto) => BtnResposta(texto, _responder)).toList();

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
            ? Questionario(
                perguntas: _perguntas,
                novaPergunta: _novaPergunta,
                responder: _responder)
            : Resultado(),
      ),
    );
  }
}
