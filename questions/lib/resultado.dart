import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Parabéns',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
