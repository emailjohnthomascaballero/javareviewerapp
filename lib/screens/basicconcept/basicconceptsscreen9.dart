import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

import 'basicconceptsscreen10.dart';

class BasicConceptsScreen9 extends StatelessWidget {
  const BasicConceptsScreen9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('BASIC CONCEPTS'),
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BasicConceptsScreen10()));
          },
          // proceed to next screen </>
        ),
        //! button </>

        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/basicconcepts_screen_9.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
    );
  }
}