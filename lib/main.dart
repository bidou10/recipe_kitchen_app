import 'package:flutter/material.dart';
import 'package:recipe_kitchen_app/first_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: GoogleFonts.caveatTextTheme(Theme.of(context).textTheme),
      ),
      home: const FirstPage(),
    );
  }
}
