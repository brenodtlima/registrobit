import 'package:flutter/material.dart';

class CondominoBlocksItem extends StatelessWidget {
  final String block;
  

  const CondominoBlocksItem({
    Key? key,
    required this.block,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        block,
        style: TextStyle(
          //garante um estilo ao valor da variavel title, de forma que influencia na aparencia apresentada na lista de leituras
          fontSize: 20, // Tamanho da fonte do título
          fontWeight: FontWeight.bold, // Peso da fonte do título
          color: Colors.black, // Cor do texto do título
        ),
      ),

      //Adicionar ao onTap o caminho para a leitura referente a cada apartamento

      onTap:  () {  
        
        print("bloco pressionado");
        /*
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => condominosBlocksScreen()),
        );
        */
      },
    );
  }
}