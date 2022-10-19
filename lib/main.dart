import 'package:admintest/home/himePage.dart';
import 'package:admintest/profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      initialRoute: "/home",
      routes: {
        '/home': (context) => HomePage(),
      '/profile': (context) => ProFilePage(),
      },
    );
  }
}

