import 'package:flutter/material.dart';
import '/screens/homescreen.dart';
import '/screens/categoryscreen.dart';

class DrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Color.fromARGB(255, 53, 53, 53),
          child: ListView(
            padding: padding,
            children: <Widget>[
              const SizedBox(
                height: 48,
              ),
              drawerItem(
                text: 'HOME',
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 30,
              ),
              drawerItem(
                text: 'CATEGORY',
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(
                height: 30,
              ),
              drawerItem(
                text: 'ABOUT',
                onClicked: () => selectedItem(context, 2),
              ),
            ],
          )),
    );
  }

  Widget drawerItem({
    required String text,
    VoidCallback? onClicked,
  }) {
    final color = Color.fromARGB(255, 255, 255, 255);
    final hoverColor = Colors.white70;

    return ListTile(
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop(); //close nav drawer & proceed to new page.

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
    }
  }
}
