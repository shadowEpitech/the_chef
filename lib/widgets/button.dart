import 'package:flutter/material.dart';
import 'package:the_chef/config/config.dart';

class BottonWidget extends StatelessWidget {
  final String title;
  final Color? titleColor, borderColor, color;
  final double radius;
  final double heigth;
  final bool border;
  final Function onPressed;

  const BottonWidget(
      {super.key,
      required this.title,
      this.titleColor,
      this.borderColor,
      this.color,
      this.radius = 10,
      this.heigth = 15,
      this.border = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, color: titleColor ?? Colors.white),
      ),
      style: ButtonStyle(
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            side: border
                ? BorderSide(
                    color: borderColor ?? Config.colors.primaryColor,
                    width: 2,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(radius),
          )),
          padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(vertical: heigth, horizontal: 20)),
          backgroundColor: WidgetStateProperty.all<Color>(
              color ?? Config.colors.primaryColor)),
    );
  }
}
