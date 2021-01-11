import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/home_page.dart';
import 'package:barang_hilang/screens/login/components/login_form.dart';
import 'package:barang_hilang/screens/login/components/login_header.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String alert = "Login to your account";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void loginProcess() {
    if (_formKey.currentState.validate()) {
      if (usernameInput.text == "zahidinf" &&
          passwordInput.text == "abcd1234") {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Homepage(
                username: usernameInput.text,
              ),
            ));
      } else {
        setState(() {
          alert = "Username or password is wrong.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              width: size.width * 0.8,
              child: Divider(
                color: kPrimaryColor,
              ),
            ),
            LoginForm(
                formKey: _formKey,
                usernameInput: usernameInput,
                passwordInput: passwordInput),
          ],
        ),
      ),
    );
  }
}
