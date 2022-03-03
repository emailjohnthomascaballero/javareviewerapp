import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  //! SPLASH SCREEN
  FlutterNativeSplash.removeAfter(initialization);
  //! SPLASH SCREEN </>

  runApp(MyApp());
}

//! SPLASH SCREEN
void initialization(BuildContext context) async {
  //print('ready in 3...');
  //await Future.delayed(const Duration(seconds: 1));
  //print('ready in 2...');
  //await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('start');
}
//! SPLASH SCREEN </>

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Java Reviewer App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 39, 39, 39),
        ),
        drawer: Drawer(),

        body: Container(
          //! button
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 50),
              primary: Color.fromARGB(255, 63, 63, 63),
            ),
            child: Text('GET STARTED'),
            onPressed: () {},
          ),
          //! button </>

          //! background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          //! background image </>
        ),
      ),
    );
  }
}
