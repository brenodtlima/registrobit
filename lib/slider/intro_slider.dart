import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:registro_bit/screens/condominos_menu_screen.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<ContentConfig> slides = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      const ContentConfig(
        title: "Adicione condomínios",
        description:
            "Ao adicionar um condomínio, informe dados sobre ele como nome, quantidade e numeração de blocos.",
        pathImage: "assets/images/add_image.png",
        backgroundColor: Color(0xff76ACFE),
      ),
    );
    slides.add(
      const ContentConfig(
        title: "Primeira leitura",
        description:
            "Na primeira leitura de um condomínio, informe cada apartamento manualmente. Nas próximas leitura esse proceso será automático.",
        pathImage: "assets/images/buildings_image.png",
        backgroundColor: Color(0xff76ACFE),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      renderSkipBtn: const Text(
        "Pular",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      renderNextBtn: const Text(
        "Próximo",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      renderDoneBtn: const Text(
        "Fim",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      listContentConfig: slides,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const CondominosMenuScreen(),
        ),
      ),
    );
  }
}
