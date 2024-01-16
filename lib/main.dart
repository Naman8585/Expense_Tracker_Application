
import 'package:cipherschools_flutter_assignment/screens/constant.dart';
import 'package:cipherschools_flutter_assignment/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Expense Tracker",
    debugShowCheckedModeBanner: false,
    home: Navigation(),
    );
  }
}
