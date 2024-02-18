import 'package:flutter/material.dart';

class NumberAnalysisScreen extends StatefulWidget {
  @override
  _NumberAnalysisScreenState createState() => _NumberAnalysisScreenState();
}

class _NumberAnalysisScreenState extends State<NumberAnalysisScreen> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();
  TextEditingController _number3Controller = TextEditingController();
  int? _maxNumber;
  int? _minNumber;
  double? _average;

  void analyzeNumbers() {
    int number1 = int.tryParse(_number1Controller.text) ?? 0;
    int number2 = int.tryParse(_number2Controller.text) ?? 0;
    int number3 = int.tryParse(_number3Controller.text) ?? 0;

    _maxNumber = [number1, number2, number3].reduce((value, element) => value > element ? value : element);
    _minNumber = [number1, number2, number3].reduce((value, element) => value < element ? value : element);
    _average = (number1 + number2 + number3) / 3;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Análisis de Números'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            TextField(
              controller: _number3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                analyzeNumbers();
              },
              child: Text('Analizar Números'),
            ),
            SizedBox(height: 20),
            Text('Número Mayor: ${_maxNumber ?? ""}'),
            Text('Número Menor: ${_minNumber ?? ""}'),
            Text('Promedio: ${_average ?? ""}'),
          ],
        ),
      ),
    );
  }
}
