import 'package:bsj_admin/UI/Views/menuGrid_view.dart';
import 'package:bsj_admin/UI/widgets/Title_for_LS.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: TitleText(),
        centerTitle: true,
      ),
      drawer: Drawer(
                child: ListView(children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.redAccent,
                Colors.yellowAccent,
                
              ]),
              
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.account_circle, size: 100,),
                Text('User', style: TextStyle(
                  fontSize:20 
                ),),
              ],
            ),
          ),

          CustomDrawer(()=>{}, Icons.person, 'Profile'),
          CustomDrawer(()=>{}, Icons.settings, 'Settings'),
          CustomDrawer(()=>{}, Icons.settings_power, 'Logout'),
         
        ]),
      ),
      body: menuGrid(),
    ));
  }
}


class CustomDrawer extends StatelessWidget {
  Function ontap;
  IconData icon;
  String  text;
  CustomDrawer(
    
    this.ontap,
    this.icon,
    this.text,
  ) ;
  @override
  Widget build(BuildContext context) {
   
    return Container(
      
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color:Colors.grey))
      ),

      child: InkWell(
        splashColor: Colors.redAccent,
        onTap: ontap,
        child:Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text, style:  TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                ],
              ),
              
              Icon(Icons.arrow_right)
            ]
          ),
        )
      )
    );
  }


}


