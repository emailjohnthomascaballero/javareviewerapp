import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

class BasicConceptsScreen extends StatelessWidget {
  const BasicConceptsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('BASIC CONCEPTS'),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Container(
        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/basicconcepts_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
    );
  }
}
