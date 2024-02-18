import 'package:flutter/material.dart';

class MultiplicationTableScreen extends StatefulWidget {
  @override
  _MultiplicationTableScreenState createState() => _MultiplicationTableScreenState();
}

class _MultiplicationTableScreenState extends State<MultiplicationTableScreen> {
  TextEditingController _numberController = TextEditingController();
  List<int> multiplicationTable = [];

  void generateMultiplicationTable(int number) {
    setState(() {
      multiplicationTable.clear();
      for (int i = 1; i <= 14; i++) {
        multiplicationTable.add(number * i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabla de Multiplicar'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese un número',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int? number = int.tryParse(_numberController.text);
                if (number != null) {
                  generateMultiplicationTable(number);
                } else {
                  print('Ingrese un número válido');
                }
              },
              child: Text('Generar Tabla'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: multiplicationTable.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${index + 1} x ${_numberController.text} = ${multiplicationTable[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
