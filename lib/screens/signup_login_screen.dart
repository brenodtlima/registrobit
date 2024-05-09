import 'package:flutter/material.dart';
import '../components/custom_rounded_wide_button_fade.dart';
import '../components/custom_rounded_wide_button.dart';
import '../components/registro_bit_logo_black_white.dart';
import '../components/background_fade.dart';
import '../components/facilitando_sua_leitura_de_dados.dart';
import '../forms/form_login.dart';
import '../forms/form_signup.dart';

class signupLoginScreen extends StatelessWidget {
  const signupLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.75,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/hidrometer.png'),
                  fit: BoxFit
                      .cover, // Ajusta a imagem para preencher o container
                ),
              ),
            ),
          ),
          BackgroundFade(),
          SingleChildScrollView(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacilitandoSuaLeituraDeDados(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomRoundedWideButtonFade(
                            text: 'Entrar',
                            firstColor: const Color(0xFF75ABFE),
                            secondColor: const Color(0xFF3D7BD8),
                            onPressed: () {
                              FormLogin.show(context, () {});
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 50),
                            child: CustomRoundedWideButton(
                              text: 'Cadastrar',
                              color: const Color(0x3F000000),
                              onPressed: () {
                                FormSignup.show(context, () {});
                              },
                            ),
                          ),
                          RegistroBitLogoBlackWhite(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
