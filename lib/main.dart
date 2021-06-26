import 'package:flutter/material.dart';
import 'package:a_to_z/welcome_screen/welcome_screen_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A to Z',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomeScreenWidget(),
    );
  }
}
