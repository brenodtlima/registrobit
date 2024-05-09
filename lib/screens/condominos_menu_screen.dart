import 'package:flutter/material.dart';
import 'package:registro_bit/components/condomino_menu_item.dart';
import 'package:registro_bit/components/custom_drawer.dart';
import 'package:registro_bit/icons/custom_icons.dart';
import '../forms/form_new_condomino.dart';

class CondominosMenuScreen extends StatefulWidget {
  const CondominosMenuScreen({Key? key}) : super(key: key);

  @override
  State<CondominosMenuScreen> createState() => _CondominosMenuScreenState();
}

class _CondominosMenuScreenState extends State<CondominosMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Bruno Lima", style: TextStyle(color: Colors.black),),
          backgroundColor: Color(0xffffffff),
          shadowColor: Colors.black12,
          leadingWidth: 25,
        ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Condominios',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Filtros',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Custom_icons.search),
                    )
                  ],
                ),
              ],
            ),
          ),
          const CondominoMenuItem(titulo: "Bela Vista", data: "01/05/23"),
          const CondominoMenuItem(titulo: "Monteiro Lobato", data: "01/05/23"),
          const CondominoMenuItem(titulo: "Van Gogh", data: "01/05/23"),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 10),
        child: FloatingActionButton(
          onPressed: () {
            FormNewCondomino.show(context, () {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
