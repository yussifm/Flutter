import 'package:flutter/material.dart';

class UserNameUI extends StatefulWidget {
  UserNameUI({Key key}) : super(key: key);

  @override
  _UserNameUIState createState() => _UserNameUIState();
}

class _UserNameUIState extends State<UserNameUI> {
  String _name;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: <Widget>[
      TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            hintText: 'Enter name',
            labelText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        onChanged: (value) {
          this.setState(() {
            _name = value;
          });
        },
      )
    ]));
  }
}
