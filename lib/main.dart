import 'package:flutter/material.dart';
import 'package:instagram/screens/search/search_screen.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Instagram',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


