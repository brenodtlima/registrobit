import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:registro_bit/components/custom_rounded_wide_button.dart';
import 'package:registro_bit/components/custom_rounded_wide_button_fade.dart';
import '../components/condomino_readings_item.dart';
import '../slider/configuration_condomino_slider.dart';
import '../objects/data_formatting.dart';

class CondominosReadingsScreen extends StatefulWidget {
  const CondominosReadingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CondominosReadingsScreen> createState() =>
      _CondominosReadingsScreensState();
}

class _CondominosReadingsScreensState extends State<CondominosReadingsScreen> {
  List<CondominoReadingsItem> condominoReadings = [
    const CondominoReadingsItem(
      titulo: "Dia de Teste",
      data: "31/12/1969",
    ),
  ];

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
          title: Text('Deseja adicionar Nova Leitura?'),
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
          DataFormatting formatter = DataFormatting();

          condominoReadings.add(
            CondominoReadingsItem(
              titulo: formatter.dayOfWeek(),
              data: formatter.date(),
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
          "Leituras realizadas",
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
                          'Leituras',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                    itemCount: condominoReadings.length,
                    itemBuilder: (context, index) {
                      return condominoReadings[index];
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