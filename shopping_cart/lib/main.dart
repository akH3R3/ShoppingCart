import 'package:flutter/material.dart';
import 'package:shopping_cart/screens/first_screen.dart';
import 'package:shopping_cart/screens/second_screen.dart';
import 'package:shopping_cart/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
 