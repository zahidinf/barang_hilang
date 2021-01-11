import 'package:barang_hilang/components/text_field_container.dart';
import 'package:barang_hilang/contants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String validatorMessage;
  final String hintText;
  final IconData icon;
  final String labelText;

  const RoundedPasswordField({
    Key key,
    this.controller,
    this.validatorMessage,
    this.hintText,
    this.icon,
    this.labelText,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: widget.controller,
        validator: (value) {
          if (value.isEmpty) {
            return widget.validatorMessage;
          }
          return null;
        },
        obscureText: passwordVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          border: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
