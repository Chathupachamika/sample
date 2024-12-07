import 'package:flutter/material.dart';

class FormInputWidget extends StatefulWidget {
  @override
  _FormInputWidgetState createState() => _FormInputWidgetState();
}

class _FormInputWidgetState extends State<FormInputWidget> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'First Name',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your first name';
              }
              return null;
            },
            onSaved: (value) => _firstName = value ?? '',
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Last Name',
            ),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your last name';
              }
              return null;
            },
            onSaved: (value) => _lastName = value ?? '',
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Age',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter your age';
              }
              if (int.tryParse(value ?? '') == null) {
                return 'Please enter a valid number';
              }
              return null;
            },
            onSaved: (value) => _age = int.parse(value ?? '0'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                _formKey.currentState?.save();
                // Handle form submission here
                print('First Name: $_firstName');
                print('Last Name: $_lastName');
                print('Age: $_age');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}