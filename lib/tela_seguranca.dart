import 'package:flutter/material.dart';

class TelaSeguranca extends StatelessWidget {
  const TelaSeguranca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segurança'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      body: Container(
        color: Color.fromRGBO(236, 233, 225, 1), // Altere a cor de fundo aqui
        child: Center(
          child: const Text(
            'Sua conta está segura',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
