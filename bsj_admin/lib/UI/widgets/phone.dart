import 'package:flutter/material.dart';

final TextEditingController phonecon = TextEditingController();

class PhoneUi extends StatefulWidget {
  PhoneUi({Key key}) : super(key: key);
  get phoneCon => phonecon;

  @override
  _PhoneUiState createState() => _PhoneUiState();
}

class _PhoneUiState extends State<PhoneUi> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: <Widget>[
      TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            icon: Icon(
              Icons.phone,
              size: 30,
            ),
            hintText: 'Enter Phone',
            labelText: 'Phone',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        controller: phonecon,
      )
    ]));
  }
}
