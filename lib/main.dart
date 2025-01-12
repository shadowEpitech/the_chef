import 'package:flutter/material.dart';
import 'package:the_chef/config/config.dart';
import 'package:the_chef/screens/home.dart';
import 'package:the_chef/screens/splash_screen.dart';
import 'package:the_chef/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Chef',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "brandgro",
        primaryColor: Config.colors.primaryColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(
        nextPage: Home(),
        time: 10,
        child: SplashScreen(),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           // TRY THIS: Try changing the color here to a specific color (to
//           // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//           // change color while the other colors stay the same.
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           // Here we take the value from the MyHomePage object that was created by
//           // the App.build method, and use it to set our appbar title.
//           title: Text("Mes Recettes"),
//         ),
//         body: Column(children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.only(bottom: 8),
//                         child: Text(
//                           "Pizza Facile",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ),
//                       Text(
//                         "Par Nicolas",
//                         style: TextStyle(
//                           color: Colors.grey[500],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Icon(Icons.favorite, color: Colors.red),
//                 Text("55")
//               ],
//             ),
//           ),
//         ]),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
