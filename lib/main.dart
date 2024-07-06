import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/screens/home/home_screen.dart';

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
      title: 'The Flutter Way',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          bodyLarge: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
          bodyMedium: TextStyle(color: Colors.black54),
          bodySmall: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
