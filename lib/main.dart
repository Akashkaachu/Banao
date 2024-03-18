import 'package:banao/presentation/bottom_navigation_page.dart/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Banano',
        home: BottomNavigationPage(),
        debugShowCheckedModeBanner: false);
  }
}
