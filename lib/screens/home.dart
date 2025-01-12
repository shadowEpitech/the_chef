import 'package:flutter/material.dart';
import 'package:the_chef/config/config.dart';
import 'package:the_chef/widgets/button.dart';
import 'package:the_chef/widgets/textfield.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home"),
            BottonWidget(
              title: "Mon Bouton",
              color: Colors.transparent,
              titleColor: Config.colors.primaryColor,
              border: true,
              // titleColor: Colors.white,
              // borderColor: Colors.blue,
              // color: Colors.blue,
              // radius: 10,
              // heigth: 40,
              // border: false,
              onPressed: () {
                // ignore: avoid_print
                print("Bouton cliqué");
              },
            ),
            TextfieldWidget(
              hint: "Nico",
            ),
          ],
        ),
      ),
    );
  }
}
