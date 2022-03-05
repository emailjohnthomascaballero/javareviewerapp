import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

class ConditionalandLoopsScreen extends StatelessWidget {
  const ConditionalandLoopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('CONDITIONAL AND LOOPS'),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Container(
        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/default_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
    );
  }
}
