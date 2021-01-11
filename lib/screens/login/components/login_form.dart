import 'package:barang_hilang/components/line_divider.dart';
import 'package:barang_hilang/components/rounded_button.dart';
import 'package:barang_hilang/components/rounded_button_with_icon.dart';
import 'package:barang_hilang/components/rounded_input_field.dart';
import 'package:barang_hilang/components/rounded_password_field.dart';
import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/components/already_have_an_account_check.dart';
import 'package:barang_hilang/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.usernameInput,
    @required this.passwordInput,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController usernameInput;
  final TextEditingController passwordInput;

  @override
  Widget build(BuildContext context) {
    return Form(
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
            press: () {},
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
