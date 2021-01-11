import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text, icon;
  final Color color, textColor, iconColor;
  final Function press;

  const RoundedButtonWithIcon({
    Key key,
    this.text,
    this.color,
    this.textColor,
    this.press,
    this.iconColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                icon,
                color: iconColor,
                width: 15,
                height: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          color: color,
        ),
      ),
    );
  }
}
