import 'package:flutter/material.dart';

class BackgroundDismissible extends StatelessWidget {
  final Color cor;
  final IconData icone;
  final bool alinharDireira;

  const BackgroundDismissible(
      {required this.cor,
      required this.icone,
      this.alinharDireira = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      child: Row(
          mainAxisAlignment:
              alinharDireira ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                icone,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
