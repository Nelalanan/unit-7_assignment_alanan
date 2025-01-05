import 'screens/about_me.dart';
import 'screens/home_screen.dart';
import 'package:flutter/material.dart';
// I tried to change it into unit-7_assignment_alanan for the folder name but it wont accept it sir unless its A i dont why
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrek Theme App',
      theme: ThemeData(
        primaryColor: Colors.green[800], 
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.brown, 
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[800], 
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutMe(),
      },
    );
  }
}
