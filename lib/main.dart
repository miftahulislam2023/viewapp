import 'package:flutter/material.dart';
import 'package:views/screens/home.dart';

void main() {
  runApp(const ViewsApp());
}

class ViewsApp extends StatelessWidget {
  const ViewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
