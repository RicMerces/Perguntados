import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() quandoReiniciarQuest;

  Resultado({required this.nota, required this.quandoReiniciarQuest});

  String get fraseFinal {
    String resultado = '\nPontuacao = $nota';

    if (nota > 10 && nota <= 20) {
      return 'Boa tentativa $resultado';
    } else if (nota > 20 && nota <= 30) {
      return 'Foi até bem $resultado';
    } else if (nota > 30 && nota <= 40) {
      return 'Muito bem $resultado';
    } else if (nota > 40 && nota <= 50) {
      return 'Top de Linha $resultado';
    } else if (nota > 50) {
      return 'Brocou dmss $resultado';
    } else {
      return 'Sabe de nada :(';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseFinal,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
        TextButton(
          onPressed: quandoReiniciarQuest,
          child: Text(
            'Reiniciar',
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
        ),
      ],
    );

    // return Center(
    //     child: Text(
    //   fraseFinal,
    //   textAlign: TextAlign.center,
    //   style: TextStyle(
    //     fontSize: 30,
    //     fontWeight: FontWeight.bold,
    //   ),
    // ));
  }
}
