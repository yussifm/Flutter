import 'package:flutter/material.dart';

class EmailUI extends StatefulWidget {
  EmailUI({Key key}) : super(key: key);

  @override
  _EmailUIState createState() => _EmailUIState();
}

class _EmailUIState extends State<EmailUI> {
  String _email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
            child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                size: 30,
              ),
              hintText: 'Enter Email',
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              )),
          onChanged: (value) {
            this.setState(() {
              _email = value;
            });
          },
        )),
      ],
    );
  }
}
