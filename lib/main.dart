import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcb_design/screens/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PCB Design',
      theme: ThemeData(
        fontFamily: GoogleFonts.kantumruyPro().fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}


