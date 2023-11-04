import 'package:flutter/material.dart';
import 'package:whatsapp_clone_by_jeet/screens/status.dart';
import 'package:whatsapp_clone_by_jeet/screens/chatscreen.dart';
import 'package:whatsapp_clone_by_jeet/screens/mobilescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        snackBarTheme: SnackBarThemeData(
            actionTextColor: Colors.white, backgroundColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: mobileScreenLayout(),
    );
  }
}
