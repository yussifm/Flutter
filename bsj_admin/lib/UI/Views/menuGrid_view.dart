import 'package:bsj_admin/UI/Views/Addfood_view.dart';
import 'package:flutter/material.dart';

class menuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            CustomMenu(
                Icons.add,
                () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ADDView()))
                    },
                "ADD FOOD MENU"),
            CustomMenu(Icons.update, () => {}, "UPDATE FOOD MENU"),
            CustomMenu(Icons.feedback, () => {}, "FOOD FEED"),
            CustomMenu(Icons.receipt, () => {}, "ORDERs PLACE"),
          ],
        ),
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  IconData icon;
  Function ontap;
  String text;

  CustomMenu(this.icon, this.ontap, this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: InkWell(
            splashColor: Colors.red,
            onTap: ontap,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 50,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ]),
          )),
    );
  }
}
