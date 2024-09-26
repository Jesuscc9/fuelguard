import 'package:flutter/material.dart';

class TrucksScreen extends StatelessWidget {
  final List<Map<String, dynamic>> mockTrucks = [
    {
      'name': 'Camión 1',
      'fuel': 280,
      'totalFuel': 300
    }, // Añade totalFuel como la capacidad máxima del tanque
    // Añade más camiones aquí
  ];

  TrucksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camiones Monitoreados'),
      ),
      body: ListView.builder(
        itemCount: mockTrucks.length,
        itemBuilder: (context, index) {
          double fuelPercentage =
              mockTrucks[index]['fuel'] / mockTrucks[index]['totalFuel'];
          return ListTile(
            title: Text(mockTrucks[index]['name']),
            subtitle: Column(
              children: [
                Text('Combustible: ${mockTrucks[index]['fuel']} L'),
                LinearProgressIndicator(value: fuelPercentage),
              ],
            ),
          );
        },
      ),
    );
  }
}
