import 'package:flutter/material.dart';
import 'package:the_chef/config/config.dart';

class TextfieldWidget extends StatelessWidget {
  final Color? backgroundColor;
  final String hint;
  final double radius;

  const TextfieldWidget(
      {super.key, this.backgroundColor, required this.hint, this.radius = 15});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor ?? Config.colors.backgroundTextField,
          hintText: hint,
          hintStyle: TextStyle(color: Config.colors.hintColor, fontSize: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          )),
    );
  }
}
