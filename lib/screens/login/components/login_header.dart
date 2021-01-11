import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key key,
    @required this.alert,
  }) : super(key: key);

  final String alert;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(
              Icons.person,
              size: 50.0,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(alert),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
