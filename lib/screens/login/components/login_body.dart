import 'package:barang_hilang/components/already_have_an_account_check.dart';
import 'package:barang_hilang/components/line_divider.dart';
import 'package:barang_hilang/components/rounded_button.dart';
import 'package:barang_hilang/components/rounded_button_with_icon.dart';
import 'package:barang_hilang/components/rounded_input_field.dart';
import 'package:barang_hilang/components/rounded_password_field.dart';
import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/home_page.dart';
import 'package:barang_hilang/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String alert = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();

  void loginProcess() {
    if (_formKey.currentState.validate()) {
      if (usernameInput.text == "zahidinf" &&
          passwordInput.text == "abcd1234") {
        alert = "";
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
            Text(
              alert,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  RoundedInputField(
                    controller: usernameInput,
                    validatorMessage: "Username cannot be blank",
                    hintText: "Your email or username",
                    labelText: "Username",
                    icon: Icons.person,
                  ),
                  RoundedPasswordField(
                    controller: passwordInput,
                    validatorMessage: "Password cannot be blank",
                    hintText: "Enter your password",
                    labelText: "Password",
                    icon: Icons.lock,
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    color: kPrimaryColor,
                    textColor: kPrimaryLightColor,
                    press: () => loginProcess(),
                  ),
                  ForgotPassword(),
                  AlreadyHaveAnAccountCheck(
                    login: true,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage();
                          },
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LineDivider(
                    text: "OR LOGIN USING",
                  ),
                  RoundedButtonWithIcon(
                    icon: "assets/icons/facebook.svg",
                    iconColor: Colors.white,
                    text: "FACEBOOK",
                    color: Color(0xFF4267B2),
                    textColor: Colors.white,
                    press: () {},
                  ),
                  RoundedButtonWithIcon(
                    icon: "assets/icons/twitter.svg",
                    iconColor: Colors.white,
                    text: "TWITTER",
                    color: Color(0xFF1DA1F2),
                    textColor: Colors.white,
                    press: () {},
                  ),
                  RoundedButtonWithIcon(
                    icon: "assets/icons/google-plus.svg",
                    iconColor: Colors.white,
                    text: "GOOGLE",
                    color: Color(0xFFDB4437),
                    textColor: Colors.white,
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
