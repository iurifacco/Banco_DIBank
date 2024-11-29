import 'package:banco/tela_emprestimo.dart';
import 'package:banco/tela_pagar.dart';
import 'package:flutter/material.dart';

class TelaPix extends StatelessWidget {
  const TelaPix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PIX'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      backgroundColor: Color.fromRGBO(236, 233, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaPagar()),
                  );
                },
                child: const Text('Pagar'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(252, 164, 148, 1),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Telaempretimo()),
                  );
                },
                child: const Text('Pedir Empréstimo'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(252, 164, 148, 1),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
