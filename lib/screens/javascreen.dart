import 'package:flutter/material.dart';
import '../widgets/drawerwidget.dart';

class JavaScreen extends StatelessWidget {
  const JavaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}
