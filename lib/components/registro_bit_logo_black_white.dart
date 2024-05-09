import 'package:flutter/material.dart';

class RegistroBitLogoBlackWhite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Registro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Gurajada',
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Bit',
                style: TextStyle(
                  color: Color(0xFF232323),
                  fontSize: 12,
                  fontFamily: 'Gurajada',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}