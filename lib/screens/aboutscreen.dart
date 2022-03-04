import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('about'),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}
