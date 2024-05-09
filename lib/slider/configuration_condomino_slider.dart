import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import '../components/custom_app_bar_configuration_slider.dart';

class ConfigurationCondominoSlider extends StatefulWidget {
  @override
  _ConfigurationCondominoSlider createState() =>
      _ConfigurationCondominoSlider();
}

class _ConfigurationCondominoSlider
    extends State<ConfigurationCondominoSlider> {
  List<Widget> slides = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  initialValue: "Bela Vista",
                    keyboardType: TextInputType.name,
                    decoration:
                        const InputDecoration(labelText: 'Nome do condomínio')),
              ],
            ),
          )),
    );
    slides.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Bloco 1",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black12,
          ),
          InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Bloco 2",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarConfigurationSlider(),
      body: IntroSlider(
        indicatorConfig: const IndicatorConfig(isShowIndicator: true),
        isShowSkipBtn: false,
        renderNextBtn: const Text(
          "Próximo",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        renderPrevBtn: const Text(
          "voltar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        renderDoneBtn: const Text(
          "Feito",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        listCustomTabs: slides,
        onDonePress: () => Navigator.pop(
            context,),
      ),
    );
  }
}
