import 'package:flutter/material.dart';
import '../components/custom_rounded_wide_button_fade.dart';
import '../screens/condominos_menu_screen.dart';
import 'package:flutter/rendering.dart';
import '../components/esqueci_minha_senha.dart';

class FormLogin {
  static void show(BuildContext context, Function() onSubmit) {
    String labelTitle = "Entrar";
   
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      builder: (context) {
        return Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      labelTitle,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(left: 32, right: 32, bottom: 32),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Nome de usuário",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: TextFormField(
                            controller: username,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              hintText: 'usuário123',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Senha",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: TextFormField(
                            controller: password,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20.0),
                              hintText: 'Senha',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EsqueciMinhaSenha(),
                                    ),
                                  );
                                },
                                splashColor: Colors.blue.withOpacity(0.5),
                                child: const Text(
                                  'Esqueci minha senha',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25, bottom: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomRoundedWideButtonFade(
                      text: 'Entrar',
                      firstColor: Color(0xFF75ABFE),
                      secondColor: Color(0xFF3D7BD8),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => IntroSliderPage()),//Reativar para visualizar os slides de introdução!
                                builder: (context) =>
                                    const CondominosMenuScreen()),
                            ModalRoute.withName("/Home"));
                      },
                    ),
                    SizedBox(height: 25),
                    Image(image: AssetImage('assets/images/RegistroBit.png')),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
