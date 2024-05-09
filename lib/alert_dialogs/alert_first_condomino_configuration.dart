import 'package:flutter/material.dart';

Future<void> ShowCondominoFirstConfigurationAlert(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Primeiro acesso'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Essa é a primeira vez que você acessa esse condomínios, configure ele.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Configurar'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => ConfigurationCondominoSlider()),
              // );
            },
          )
        ],
      );
    },
  );
}
