import 'package:flutter/material.dart';
import '../screens/condominos_blocks_screen.dart';

class CondominoReadingsItem extends StatelessWidget {
  final String titulo;
  final String data;
  

  const CondominoReadingsItem({
    Key? key,
    required this.titulo,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titulo,
        style: TextStyle(
          //garante um estilo ao valor da variavel title, de forma que influencia na aparencia apresentada na lista de leituras
          fontSize: 20, // Tamanho da fonte do título
          fontWeight: FontWeight.bold, // Peso da fonte do título
          color: Colors.black, // Cor do texto do título
        ),
      ),
      subtitle: Text(data),
      onTap:  () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => condominosBlocksScreen()),
        );
      },
    );
  }
}