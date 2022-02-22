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
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
