import 'package:flutter/material.dart';

class BotaoadicionarWidget extends StatelessWidget {
  final void Function() sendNomeUsuario;
  final IconData icon;

  const BotaoadicionarWidget({super.key, required this.icon, required this.sendNomeUsuario});


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: sendNomeUsuario,
        child: Icon(icon), 
      );
  }
}
