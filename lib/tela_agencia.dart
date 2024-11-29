import 'package:flutter/material.dart';

class TelaAgencia extends StatelessWidget {
  const TelaAgencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agência'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/home/labin-linux/AndroidStudioProjects/banco/lib/pelotas.png'), // Substitua pelo caminho da sua imagem
            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
          ),
        ),
      ),
    );
  }
}
