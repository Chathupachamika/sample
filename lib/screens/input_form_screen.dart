import 'package:flutter/material.dart';
import 'package:firstweek_december/widgets/form_input_widget.dart';

class InputFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: FormInputWidget(),
      ),
    );
  }
}