import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  String hint, label;
  String _textinputvalue;
   TextInput(this.hint, this.label);
   get textinputvalue => _textinputvalue;
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Form(child: TextFormField(
         decoration: InputDecoration(
           hintText: widget.hint,
           labelText: widget.label,
         ),

         onChanged: (value){
           this.setState(() {
            widget._textinputvalue =value;
           });
         },

       )),
    );
  }
}