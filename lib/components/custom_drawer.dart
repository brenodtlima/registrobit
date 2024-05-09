import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff4E8CEA),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff4E8CEA)),
              accountName: Text(
                "Bruno Lima",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("brunolima.tw@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                child: Text(
                  "B",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Meu Perfil'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_label),
            title: const Text('Últimas leituras'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Editar Perfil '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Sair'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
