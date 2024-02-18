import 'package:flutter/material.dart';

class PresentationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presentación'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/your_photo.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Amín Jesús',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Báez Espinosa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/multiplication_table');
              },
              child: Text('Tabla de Multiplicar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/number_analysis');
              },
              child: Text('Análisis de Números'),
            ),
          ],
        ),
      ),
    );
  }
}
