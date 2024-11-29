import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false, // Alinhar o título à esquerda
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Image.asset('logo.png', // substitua pelo caminho da sua imagem
        fit: BoxFit.contain,
        height: 32,
        )
     ] )
      ),
    );
  }
}