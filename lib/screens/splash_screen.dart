import 'package:flutter/material.dart';
import 'package:the_chef/config/config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Config.assets.splashimage),
            Container(
              height: 40,
              width: 184,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Config.colors.primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Text("Fruit Hub",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "badScript")),
            )
          ],
        ),
      ),
    );
  }
}
