import 'package:flutter/material.dart';
import './header/header.dart';
import './body/body.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'DungGeunMo'),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderTitle(),
        backgroundColor: Colors.black,
      ),
      body: const Body(),
    );
  }
}