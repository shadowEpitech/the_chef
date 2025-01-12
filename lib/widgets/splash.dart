import 'dart:async';

import 'package:flutter/material.dart';
import 'package:the_chef/config/router.dart';

class SplashWidget extends StatelessWidget {
  final int time;
  final Widget child, nextPage;

  const SplashWidget(
      {super.key, required this.child, this.time = 3, required this.nextPage});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage);
    });
    return child;
  }
}
