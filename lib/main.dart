import 'package:flutter/material.dart';
import 'package:wisatacandi/data/candi_data.dart';
import 'package:wisatacandi/screen/profile_screen.dart';
import 'package:wisatacandi/screen/sign_in_screen.dart';
import 'package:wisatacandi/screen/sign_up_screen.dart';
import 'screen/detail_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.deepPurple),
            titleTextStyle: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(
                primary: Colors.deepPurple, surface: Colors.deepPurple[50]),
        useMaterial3: true,
      ),
      // home: DetailScreen(candi: candiList[0]),
      home: SignUpScreen(),
    );
  }
}