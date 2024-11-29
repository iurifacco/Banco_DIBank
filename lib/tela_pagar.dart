import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaPagar extends StatefulWidget {
  const TelaPagar({super.key});

  @override
  _TelaPagarState createState() => _TelaPagarState();
}

class _TelaPagarState extends State<TelaPagar> {
  double saldo = 100.0; // Saldo inicial
  final TextEditingController _valorController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _carregarSaldo();
  }

  Future<void> _carregarSaldo() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      saldo = prefs.getDouble('saldo') ?? 100.0; // Saldo padrão
    });
  }

  Future<void> _salvarSaldo() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble('saldo', saldo);
  }

  void realizarPagamento() {
    double valor = double.tryParse(_valorController.text) ?? 0.0;

    if (valor <= saldo && valor > 0) {
      setState(() {
        saldo -= valor;
      });
      _salvarSaldo();
      _valorController.clear();
    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Saldo insuficiente ou valor inválido!')),
      );
    }
  }

  @override
  void dispose() {
    _valorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamento'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      backgroundColor: Color.fromRGBO(236, 233, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'saldo: ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'R\$',
                    style: TextStyle(color: Colors.green),
                  ),
                  TextSpan(
                    text: saldo.toStringAsFixed(2),
                    style: const TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _valorController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Valor do Pagamento',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: realizarPagamento,
              child: const Text('Realizar Pagamento'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(252, 164, 148, 1),
                padding: const EdgeInsets.symmetric(vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
