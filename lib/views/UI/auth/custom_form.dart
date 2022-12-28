import 'package:flutter/material.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({
    super.key,
    required this.labelText,
    this.helperText = '',
    this.obscure = false,
    required this.labelBool,
  });

  final String labelText;
  final String helperText;
  final bool obscure;
  final bool labelBool;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      obscureText: obscure,
      decoration: InputDecoration(
        helperText: labelBool ? helperText : '',
        helperStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.9,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0.9,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        suffixIcon: const Icon(
          Icons.email_rounded,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
