import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String texto;
  final TextInputType? teclado;
  final bool? isSenha;

  const CampoTexto(
      {required this.controller,
      required this.texto,
      this.teclado,
      this.isSenha,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: controller,
        keyboardType: teclado ?? TextInputType.text,
        obscureText: isSenha ?? false,
        decoration: InputDecoration(
            labelText: texto, border: const OutlineInputBorder()),
      ),
    );
  }
}
