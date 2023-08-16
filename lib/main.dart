import 'package:astro_app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astro app',
      theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
    );
  }
}
