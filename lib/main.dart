import 'package:flutter/material.dart';
import 'package:schoolerp/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School ERP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade200),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
