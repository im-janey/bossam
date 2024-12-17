import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/intro/splash.dart';
import 'themes/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final materialTheme = MaterialTheme(
      GoogleFonts.robotoTextTheme(),
    );

    return MaterialApp(
      title: 'Bossam',
      debugShowCheckedModeBanner: false,
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.system,
      home: const SplashPage(),
    );
  }
}
