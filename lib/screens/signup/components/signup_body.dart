import 'package:barang_hilang/components/already_have_an_account_check.dart';
import 'package:barang_hilang/components/rounded_button.dart';
import 'package:barang_hilang/components/rounded_input_field.dart';
import 'package:barang_hilang/components/rounded_password_field.dart';
import 'package:barang_hilang/contants.dart';
import 'package:barang_hilang/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final TextEditingController fullName;
  final TextEditingController email;
  final TextEditingController dateOfBirth;
  final TextEditingController password;

  const Register({
    Key key,
    this.fullName,
    this.email,
    this.dateOfBirth,
    this.password,
  }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
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
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RoundedInputField(
                    controller: widget.fullName,
                    validatorMessage: "Full name cannot be blank",
                    hintText: "John Doe",
                    labelText: "Full Name",
                    icon: Icons.person,
                  ),
                  RoundedInputField(
                    controller: widget.email,
                    validatorMessage: "Email cannot be blank",
                    hintText: "john.doe@baranghilang.com",
                    labelText: "Email",
                    icon: Icons.email,
                  ),
                  RoundedInputField(
                    controller: widget.dateOfBirth,
                    validatorMessage: "Date of birth cannot be blank",
                    hintText: "dd-mm-yyyy",
                    labelText: "Date of Birth",
                    icon: Icons.calendar_today,
                  ),
                  RoundedPasswordField(
                    controller: widget.password,
                    validatorMessage: "Password cannot be blank",
                    hintText: "Create password",
                    labelText: "Password",
                    icon: Icons.lock,
                  ),
                  RoundedButton(
                    text: "CREATE ACCOUNT",
                    press: () {},
                    color: kPrimaryColor,
                    textColor: kPrimaryLightColor,
                  ),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
