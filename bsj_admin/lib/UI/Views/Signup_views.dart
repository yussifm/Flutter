import 'package:bsj_admin/UI/Views/login_views.dart';
import 'package:bsj_admin/UI/widgets/Title_for_LS.dart';
import 'package:bsj_admin/UI/widgets/email.dart';
import 'package:bsj_admin/UI/widgets/name.dart';
import 'package:bsj_admin/UI/widgets/password.dart';
import 'package:bsj_admin/UI/widgets/phone.dart';
import 'package:flutter/material.dart';

class SignUpAdmin extends StatefulWidget {
  SignUpAdmin({Key key}) : super(key: key);

  @override
  _SignUpAdminState createState() => _SignUpAdminState();
}

class _SignUpAdminState extends State<SignUpAdmin> {
  get _namestate => UserNameUI().namestate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          child: ListView(
        children: <Widget>[
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text('BEST JOINT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'Robotoitalic',
                    )),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.supervisor_account,
                    size: 50,
                  ),
                ),
                TitleText(),
              ],
            ),
          ]),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: EmailUI(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: UserNameUI(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: PhoneUi(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: PasswordUI(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: 30,
                    ),
                    hintText: 'Comfirm password',
                    labelText: 'Comfirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                obscureText: true,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: FlatButton(onPressed: () {
               if(!_namestate.currentState.validate()){
                 return;
               }
               _namestate.currentState.saved();
                 
               
              }, child: Text('SignUp')),
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an Account ? ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => LoginAdmin()));
                  },
                  child: Text("LogIn ",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          decoration: TextDecoration.underline)),
                ),
              ],
            ),
          )
        ],
      )),
    ));
  }
}
