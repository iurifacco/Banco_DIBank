import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Telaempretimo extends StatefulWidget {
  const Telaempretimo({super.key});

  @override
  _TelaempretimoState createState() => _TelaempretimoState();
}

class _TelaempretimoState extends State<Telaempretimo> {
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


  void aumentarSaldo(double valor) {
    setState(() {
      saldo += valor;
    });
    _salvarSaldo();
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
        title: const Text('Empréstimo'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      backgroundColor: Color.fromRGBO(236, 233, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Saldo: ',
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
            const SizedBox(height: 30),

            // Botões para adicionar R$ 10, R$ 20 e R$ 50
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () => aumentarSaldo(10.0),
                  child: const Text('Adicionar R\$ 10,00'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 164, 148, 1),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => aumentarSaldo(20.0),
                  child: const Text('Adicionar R\$ 20,00'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 164, 148, 1),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                const SizedBox(height: 10), // Espaço entre os botões
                ElevatedButton(
                  onPressed: () => aumentarSaldo(50.0),
                  child: const Text('Adicionar R\$ 50,00'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(252, 164, 148, 1),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
