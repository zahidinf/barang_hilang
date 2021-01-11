import 'package:barang_hilang/components/text_field_container.dart';
import 'package:barang_hilang/contants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController controller;
  final String validatorMessage;
  final String hintText;
  final IconData icon;
  final String labelText;

  const RoundedInputField({
    Key key,
    this.controller,
    this.validatorMessage,
    this.hintText,
    this.icon,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value.isEmpty) {
            return validatorMessage;
          }
          return null;
        },
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
