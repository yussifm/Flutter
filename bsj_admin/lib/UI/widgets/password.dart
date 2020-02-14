import 'package:flutter/material.dart';

class PasswordUI extends StatefulWidget {
  PasswordUI({Key key}) : super(key: key);

  @override
  _PasswordUIState createState() => _PasswordUIState();
}

class _PasswordUIState extends State<PasswordUI> {
  String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                size: 30,
              ),
              hintText: 'Enter Strong password',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          obscureText: true,
          onChanged: (value) { 
            this.setState(() {
              _password = value;
            });
          },
        )
      ]),
    );
  }
}
