import 'package:flutter/material.dart';
import 'package:registro_bit/icons/custom_icons.dart';
import '../screens/condominos_readings_screen.dart';

class CondominoMenuItem extends StatelessWidget {
  final String titulo;
  final String data;

  const CondominoMenuItem({
    Key? key,
    required this.titulo,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CondominosReadingsScreen()),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "última leitura: $data",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Custom_icons.arrow_right, color: Colors.black,))
              ],
            ),
          ),
          Container(height: 1, color: Colors.black12)
        ],
      ),
    );
  }
}
