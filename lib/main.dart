import 'package:flutter/material.dart';
import 'package:proyecto_app_mobiles/views/screens/Foro/foro.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Foro Flutter',
      home: Foro()
    );
  }
}
