import 'package:bsj_admin/UI/widgets/Textinput_wig.dart';
import 'package:flutter/material.dart';

class ADDView extends StatefulWidget {
  ADDView({Key key}) : super(key: key);

  @override
  _ADDViewState createState() => _ADDViewState();
}

class _ADDViewState extends State<ADDView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Add Food'),
         
        
       ),
       body: ListView(
                children:<Widget>[Container(
           child: Column(children: <Widget>[
             TextInput('FOODD','FOOd Enter'),
             Text('ddjgi'),
             
           ],),
         ),
                ]),
     
    );
  }
}

