import 'package:flutter/material.dart';
import 'package:project_managment/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project Managment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFD8ECF1)),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}
