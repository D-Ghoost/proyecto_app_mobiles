import 'package:flutter/material.dart';
import 'package:proyecto_app_mobiles/views/screens/Foro/foro.dart';
import 'package:proyecto_app_mobiles/views/screens/Home/Home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Foro Flutter',
      routes: {
        "/":(context) => const Home(),
        "/foro":(context) =>  const Foro(),
        // "/medicamentos": (context) => const Medicamentos(),
        // "/edicion":(context) => const EdicionPerfil(),
        // "/add-medicamentos": (context) => const MyApp()
      },
      initialRoute: "/",
    );
  }
}
