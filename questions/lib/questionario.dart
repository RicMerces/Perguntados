import 'package:flutter/material.dart';
import 'package:questions/questao.dart';
import 'package:questions/resultado.dart';
import 'package:questions/btn_resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int novaPergunta;
  final void Function() responder;

  Questionario({
    required this.perguntas,
    required this.novaPergunta,
    required this.responder,
  });

  bool get temPerguntaSelecionada => novaPergunta < perguntas.length;

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[novaPergunta].cast()['respostas']
        : [];
    return Column(
      children: [
        Questao(
          perguntas[novaPergunta]['texto'].toString(),
        ),
        // ...respostas
        ...respostas.map((texto) => BtnResposta(texto, responder)).toList()
      ],
    );
  }
}
