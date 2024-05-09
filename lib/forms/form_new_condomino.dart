import 'package:flutter/material.dart';
import '../components/custom_rounded_wide_button_fade.dart';

class FormNewCondomino {
  static void show(BuildContext context, Function() onSubmit) {
    String labelTitle = "Adicionar";

    TextEditingController condomino_name = TextEditingController();

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              Text(labelTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10),
                child: Text(
                    "Nome do condomínio",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )
                ),
              ),
              Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFEFEFEF),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: TextFormField(
                  controller: condomino_name,
                  //textInputAction: textInputAction,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    hintText: '...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomRoundedWideButtonFade(
                text: 'Adicionar',
                firstColor: const Color(0xFF75ABFE),
                secondColor: const Color(0xFF3D7BD8),
                onPressed: () {
                  },
              ),
            ],
          ),
        );
      },
    );
  }
}
