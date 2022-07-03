import 'package:aula02_pos_25_06_2022/ui/temas/meu_tema.dart';
import 'package:aula02_pos_25_06_2022/ui/ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginPage(),
    title: 'Meus Livros',
    theme: criarAppTema(),
    debugShowCheckedModeBanner: false,
  ));
}
