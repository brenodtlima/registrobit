import 'package:flutter/material.dart';

class FacilitandoSuaLeituraDeDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 305,
      child: Text(
        'Facilitando sua leitura de dados',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 45,
          fontFamily: 'GowunDodum',
          fontWeight: FontWeight.w400,
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              offset: Offset(0, 4), // Define a posição da sombra (horizontal, vertical)
            ),
          ],
        ),
      ),
    );
  }
}
