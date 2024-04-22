import 'package:flutter/material.dart';
import 'package:flutter_different_screens_design/screens/security_app_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 49, 51, 66),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 49, 51, 66),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        colorSchemeSeed: const Color.fromARGB(255, 7, 200, 200),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const SecurityAppScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
