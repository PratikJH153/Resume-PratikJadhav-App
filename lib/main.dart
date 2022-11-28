import 'package:flutter/material.dart';
import 'package:resumeapp/theme/theme.dart';
import 'package:resumeapp/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "PratikJadhav",
      theme: themeData,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text("404 Error Page not Found,")),
        ),
      ),
      initialRoute: HomePage.routeID,
      routes: {
        HomePage.routeID: (context) => const HomePage(),
      },
    );
  }
}
