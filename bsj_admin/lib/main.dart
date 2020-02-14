import 'package:bsj_admin/UI/Views/home.dart';
import 'package:bsj_admin/UI/Views/signup_views.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BSJADMIN',
      theme: ThemeData(
       primaryColor: Colors.redAccent,
        
      ),
      home: Home(),
    );
  }
}
