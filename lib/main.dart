import 'package:flutter/material.dart';
import 'package:week1/Login.dart';
import 'package:week1/Welcome.dart';
import 'Welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tuan_01"),
        ),
        body: const Welcome(),
      ),
    );
  }
}
