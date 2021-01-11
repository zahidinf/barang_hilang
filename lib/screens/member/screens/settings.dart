import 'package:barang_hilang/screens/login/login_screen.dart';
import 'package:barang_hilang/screens/member/components/menu_item.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        children: <Widget>[
          MenuItem(
            text: "Profile",
            icon: Icons.person,
            press: () {},
          ),
          MenuItem(
            text: "Preference",
            icon: Icons.settings,
            press: () {},
          ),
          MenuItem(
            text: "About",
            icon: Icons.info,
            press: () {},
          ),
          MenuItem(
            text: "Logout",
            icon: Icons.logout,
            press: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
