import 'package:flutter/material.dart';

class MensagemAlerta {
  Future show(
      {required BuildContext context,
      required String titulo,
      required String mensagem,
      required List<Widget> botoes}) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(titulo),
        content: Text(mensagem),
        actions: botoes,
      ),
    );
  }
}
