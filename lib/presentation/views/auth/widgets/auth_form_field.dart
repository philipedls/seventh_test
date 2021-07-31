import 'package:flutter/material.dart';

class AuthFormField extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final bool? obscureText;

  const AuthFormField(
      {Key? key, this.hint, this.controller, this.inputType, this.obscureText})
      : super(key: key);

  @override
  _AuthFormFieldState createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.inputType,
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      validator: (String? value) {
        if (value?.trim().isEmpty == true) {
          return "Campo vazio!";
        }
      },
    );
  }
}
