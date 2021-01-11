import 'package:barang_hilang/components/already_have_an_account_check.dart';
import 'package:barang_hilang/components/line_divider.dart';
import 'package:barang_hilang/components/rounded_button.dart';
import 'package:barang_hilang/components/rounded_button_with_icon.dart';
import 'package:barang_hilang/components/rounded_input_field.dart';
import 'package:barang_hilang/components/rounded_password_field.dart';
import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/screens/member/home_page.dart';
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

  nested() {
    Size size = MediaQuery.of(context).size;
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: kPrimaryColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "BarangHilang.com",
                style: TextStyle(
                  color: kPrimaryLightColor,
                  fontSize: 18,
                ),
              ),
              background: Image.asset(
                "assets/images/wallpaper.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: Container(
        width: size.width,
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: nested(),
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
