import 'package:flutter/material.dart';


class TitleText extends StatefulWidget {
  TitleText({Key key}) : super(key: key);

  @override
  _TitleTextState createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  
  @override
  Widget build(BuildContext context) {
   
    return Text('👤 ADMIN PANEL', style: TextStyle(
      fontSize: 20,
     
      fontWeight: FontWeight.w800,
      color: Colors.black87,
    ),);
  }
}