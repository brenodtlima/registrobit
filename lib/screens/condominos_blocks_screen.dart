import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:registro_bit/components/condomino_blocks_item.dart';
import 'package:registro_bit/components/custom_rounded_wide_button.dart';
import 'package:registro_bit/components/custom_rounded_wide_button_fade.dart';
import '../slider/configuration_condomino_slider.dart';

class condominosBlocksScreen extends StatefulWidget {
  const condominosBlocksScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<condominosBlocksScreen> createState() =>
      _condominosBlocksScreensState();
}

class _condominosBlocksScreensState extends State<condominosBlocksScreen> {
  List<CondominoBlocksItem> condominoBlocks = [
    const CondominoBlocksItem(
      block: "Bloco 1 - Teste"
    ),
    const CondominoBlocksItem(
      block: "Bloco 2 - Teste"
    ),
  ];
  String block = '';

  @override
  void initState() {
    //força sincronização a cada nova leitura realizara, para que apareça na lista
    super.initState();
    initializeDateFormatting('pt_BR', null);
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Deseja adicionar um novo bloco ao condominio (pegar nome do condominio)?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text('Confirmar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    ).then((confirmed) {
      if (confirmed != null && confirmed) {
        setState(() {
          condominoBlocks.add(
            CondominoBlocksItem(
              block: "chamar um forms p/ escrever nome do bloco",
            ),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Blocos - (nome do condominio)",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffffffff),
        shadowColor: Colors.black12,
        leadingWidth: 25,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfigurationCondominoSlider()),
              );
            },
            icon: const Icon(Icons.create_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Blocos',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_month),
                          iconSize: 25,
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: condominoBlocks.length,
                    itemExtent: 60,
                    itemBuilder: (context, index) {
                      return condominoBlocks[index];
                    },
                  ),
                  const SizedBox(height: 60)
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CustomRoundedWideButtonFade(
                    onPressed: _showConfirmationDialog,
                    text: 'Nova Leitura',
                    firstColor: const Color(0xFF75ABFE),
                    secondColor: const Color(0xFF3D7BD8),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomRoundedWideButton(
                    onPressed: () {
                      // Continuar e leitura
                      print('Continuar e leitura');
                    },
                    text: 'Continuar e leitura',
                    color: Colors.black12,
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