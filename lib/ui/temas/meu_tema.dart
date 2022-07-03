import 'package:flutter/material.dart';

ThemeData criarAppTema() {
  const primaryColor = Colors.deepPurple;
  final primaryColorDark = Colors.deepPurple.shade900;
  final primaryColorLight = Colors.deepPurple.shade200;

  final botaoFlutuante = FloatingActionButtonThemeData(
    backgroundColor: primaryColorDark,
  );

  final botaoQuadrado = ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(primaryColorDark),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    )),
  ));

  final appBar = AppBarTheme(
    centerTitle: true,
    color: primaryColorDark,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
    titleTextStyle: const TextStyle(fontSize: 24, color: Colors.white),
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    elevatedButtonTheme: botaoQuadrado,
    floatingActionButtonTheme: botaoFlutuante,
    appBarTheme: appBar,
  );
}
