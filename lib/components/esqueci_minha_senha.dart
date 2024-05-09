import 'package:flutter/material.dart';

class EsqueciMinhaSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 40,
        ), 
        elevation: 0, // Remove a sombra do appBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 25.0, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Verifique o seu email',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Nós enviamos um código de recuperação para o seu email.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'b********9@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite o código de recuperação',
                    labelText: 'Código de Recuperação',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // Alinha o botão à direita
              children: [
                SizedBox(width: 10), // Espaçamento entre o botão e a borda direita da tela
                Container(
                  width: 150, // Defina a largura do contêiner conforme desejado
                  height: 45, // Defina a altura do contêiner conforme desejado
                  child: ElevatedButton(
                    onPressed: () {
                      // Adicione aqui a lógica para o botão, se necessário
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Define o raio das bordas para torná-las mais arredondadas
                      ),
                    ),
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: EsqueciMinhaSenha(),
  ));
}
