import 'package:flutter/material.dart';

class TelaInformacao extends StatelessWidget {
  const TelaInformacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DIBank'),
        backgroundColor: Color.fromRGBO(252, 164, 148, 1),
      ),
      backgroundColor: Color.fromRGBO(236, 233, 225, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adiciona um espaçamento
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DIBank: O Banco Digital do Futuro',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Fundado em 2024, o DIBank surgiu com a missão de revolucionar a experiência bancária digital. '
                    'Com sede em uma moderna torre de vidro em Pelotas/RS, o DIBank se posiciona como uma alternativa '
                    'inovadora aos bancos tradicionais, oferecendo serviços financeiros ágeis e acessíveis.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Funcionamento do DIBank',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Plataforma Intuitiva: O DIBank opera exclusivamente online, o que permite que os clientes acessem suas '
                    'contas a qualquer hora e em qualquer lugar. O aplicativo é projetado para ser intuitivo, com uma '
                    'interface amigável que facilita a navegação.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Serviços Oferecidos:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '• Contas Correntes e Poupanças\n'
                    '• Cartões Virtuais\n'
                    '• Empréstimos Rápidos\n'
                    '• Investimentos',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Segurança: O DIBank utiliza tecnologia de ponta em segurança cibernética, garantindo a proteção dos dados dos clientes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Inovação e Sustentabilidade: Parte dos lucros é destinada a projetos de responsabilidade social e ambiental.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
