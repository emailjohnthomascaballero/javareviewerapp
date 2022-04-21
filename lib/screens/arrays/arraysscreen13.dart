import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

import 'arraysscreen14.dart';

class ArraysScreen13 extends StatelessWidget {
  const ArraysScreen13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
      body: Container(
        //! button
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(32),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(300, 50),
            primary: Color.fromARGB(255, 63, 63, 63),
          ),
          child: Text('NEXT'),
          // proceed to next screen
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ArraysScreen14()));
          },
          // proceed to next screen </>
        ),
        //! button </>s

        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/arrays_screen_13.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
    );
  }
}
