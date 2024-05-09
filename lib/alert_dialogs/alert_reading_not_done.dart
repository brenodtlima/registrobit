import 'package:flutter/material.dart';

Future<void> ShowReadingNotDoneAlert(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Leitura não finalizada'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('A última leitura não foi feita até o fim.'),
              Text('Gostaria de continuar ela?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Continuar leitura'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      );
    },
  );
}
