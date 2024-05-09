import 'package:flutter/material.dart';

class CustomAppBarConfigurationSlider extends StatelessWidget implements PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
      leadingWidth: 30,
      title: Text(
        "Retornar",
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      shadowColor: Colors.black12,
    );
  }
}
