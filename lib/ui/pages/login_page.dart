import 'package:aula02_pos_25_06_2022/enums/botao_enum.dart';
import 'package:aula02_pos_25_06_2022/ui/ui.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usuarioController = TextEditingController();
  final _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _criarTopo(),
          CampoTexto(
            controller: _usuarioController,
            texto: 'Usuário',
          ),
          CampoTexto(
            controller: _senhaController,
            texto: 'Senha',
            isSenha: true,
          ),
          Botao(
            texto: 'Entrar',
            clique: _entrarClique,
          ),
        ],
      ),
    );
  }

  Widget _criarTopo() {
    return Container(
        height: 200,
        margin: const EdgeInsets.only(bottom: 24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorDark,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.book_outlined,
              size: 100,
              color: Colors.white,
            ),
            Text(
              'Meus Livros',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ],
        ));
  }

  void _entrarClique() {
    if (_usuarioController.text == 'admin' &&
        _senhaController.text == 'admin') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      MensagemAlerta().show(
        context: context,
        titulo: 'Usuário ou senha inválidos',
        mensagem: 'Por favor, verifique os dados e tente novamente.',
        botoes: [
          Botao(
            texto: 'Ok',
            tipo: BotaoEnum.texto,
            clique: () => Navigator.pop(context),
          ),
        ],
      );
    }
  }
}
