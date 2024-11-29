import 'package:banco/tela_agencia.dart';
import 'package:banco/tela_pix.dart';
import 'package:banco/tela_seguranca.dart';
import 'package:banco/recuperar_senha.dart';
import 'package:banco/tela_informacao.dart';
import 'package:flutter/material.dart';

class TelaConta extends StatelessWidget {
  const TelaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(236, 233, 225, 1),
          elevation: 0, // Remove a sombra do AppBar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                '/home/labin-linux/AndroidStudioProjects/banco/lib/logo.png',
                fit: BoxFit.contain,
                height: 32,
              ),
            ],
          ),
        ),
        body: Container(
          color: Color.fromRGBO(236, 233, 225, 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 60,
                        color: Color.fromRGBO(252, 164, 148, 1),
                      ),
                      SizedBox(width: 10), // Espaço entre o ícone e o texto
                      Text(
                        'Olá, Usuário!',
                        style: TextStyle(
                          fontSize: 20, // Tamanho da fonte
                          fontWeight: FontWeight.bold, // Peso da fonte
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text('CPF:', style: TextStyle(fontSize: 20)),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: Text('Conta:', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text('XXX.123.456-XX', style: TextStyle(fontSize: 20)),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                      child: Text('43243-1', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                Spacer(), // Espaço flexível
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(252, 164, 148, 1)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TelaSeguranca()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.security,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(height: 32),
                              Text(
                                'Segurança',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(252, 164, 148, 1)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TelaPix()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.api_outlined,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(height: 32),
                              Text(
                                '       pix       ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(252, 164, 148, 1)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RecuperarSenha()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.key,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(height: 32),
                              Text(
                                'Recuperar senha',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(252, 164, 148, 1)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TelaInformacao()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.assignment,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(height: 32),
                              Text(
                                'informaçoẽs',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(252, 164, 148, 1)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TelaAgencia()),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.business_outlined,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(height: 32),
                              Text(
                                '   Agencia   ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
