import 'package:aula02_pos_25_06_2022/enums/botao_enum.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final BotaoEnum tipo;
  final VoidCallback clique;

  const Botao(
      {required this.texto,
      this.tipo = BotaoEnum.quadrado,
      required this.clique,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (tipo) {
      case BotaoEnum.texto:
        return _criarBotaoTexto();
      default:
        return _criarBotaoQuadrado();
    }
  }

  Widget _criarBotaoQuadrado() {
    return ElevatedButton(
      onPressed: clique,
      child: Text(texto),
    );
  }

  Widget _criarBotaoTexto() {
    return TextButton(
      onPressed: clique,
      child: Text(texto),
    );
  }
}
