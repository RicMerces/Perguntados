import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;

  Resultado({required this.nota});

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
    return Center(
        child: Text(
      fraseFinal,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
