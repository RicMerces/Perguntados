import 'package:flutter/material.dart';

class BtnResposta extends StatelessWidget {
  final String texto;
  final void Function() enunciado;

  BtnResposta(this.texto, this.enunciado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(40, 5, 40, 5),
      child: ElevatedButton(
        onPressed: enunciado,
        child: Text(texto),
      ),
    );
  }
}
