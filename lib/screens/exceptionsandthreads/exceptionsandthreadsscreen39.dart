import 'package:flutter/material.dart';
import '/widgets/drawerwidget.dart';

import 'exceptionsandthreadsscreen40.dart';

class ExceptionsAndThreadsScreen39 extends StatelessWidget {
  const ExceptionsAndThreadsScreen39({Key? key}) : super(key: key);

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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExceptionsAndThreadsScreen40()));
          },
          // proceed to next screen </>
        ),
        //! button </>

        //! background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/exceptionsandthreads_screen_39.png'),
            fit: BoxFit.cover,
          ),
        ),
        //! background image </>
      ),
    );
  }
}
