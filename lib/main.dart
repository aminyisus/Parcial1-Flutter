import 'package:flutter/material.dart';
import 'package:parcial1_flutter/PresentationScreen.dart'; // Importa las pantallas aquí
import 'package:parcial1_flutter/MultiplicationTableScreen.dart';
import 'package:parcial1_flutter/NumberAnalysisScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => PresentationScreen(),
        '/multiplication_table': (context) => MultiplicationTableScreen(),
        '/number_analysis': (context) => NumberAnalysisScreen(),
      },
    );
  }
}
