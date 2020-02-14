import 'package:bsj_admin/UI/Views/Signup_views.dart';
import 'package:bsj_admin/UI/widgets/Title_for_LS.dart';
import 'package:bsj_admin/UI/widgets/name.dart';
import 'package:bsj_admin/UI/widgets/password.dart';
import 'package:flutter/material.dart';

class LoginAdmin extends StatefulWidget {
  LoginAdmin({Key key}) : super(key: key);

  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(
                    child: Text('BEST JOINT',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontFamily: 'Robotoitalic',
                        )),
                  ),
                ),
                SizedBox(height: 30),
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
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: UserNameUI(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: PasswordUI(),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: FlatButton(onPressed: () {}, child: Text('Login')),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an Account ? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  GestureDetector(
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => SignUpAdmin()));},
                    child: Text("Sign Up ",
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
      ),
    );
  }
}
