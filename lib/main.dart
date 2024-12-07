import 'package:flutter/material.dart';
import 'package:firstweek_december/screens/input_form_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Data Form',
      home: InputFormScreen(),
    );
  }
}