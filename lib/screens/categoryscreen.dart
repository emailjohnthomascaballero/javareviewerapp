import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('category'),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}
