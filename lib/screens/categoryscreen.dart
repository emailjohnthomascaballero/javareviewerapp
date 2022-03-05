import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';
import 'homescreen.dart';
import 'basicconceptsscreen.dart';

class CategoryScreen extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('CATEGORY'),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Container(
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            drawerItem(
              text: 'BASIC CONCEPTS',
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 30,
            ),
            drawerItem(
              text: 'CONDITIONAL AND LOOPS',
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 30,
            ),
            drawerItem(
              text: 'ARRAYS',
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(
              height: 30,
            ),
            drawerItem(
              text: 'CLASSES AND OBJECTS',
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 30,
            ),
            drawerItem(
              text: 'EXCEPTIONS AND THREADS',
              onClicked: () => selectedItem(context, 4),
            ),
          ],
        ),
        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/category_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
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
          builder: (context) => BasicConceptsScreen(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
    }
  }
}
