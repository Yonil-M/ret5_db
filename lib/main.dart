import 'package:flutter/material.dart';
import 'package:ret5_db/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NotasBD App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}