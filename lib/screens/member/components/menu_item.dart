import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Function press;
  final IconData icon;
  final String text;

  const MenuItem({
    Key key,
    this.press,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
      ),
      child: FlatButton(
        onPressed: press,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
