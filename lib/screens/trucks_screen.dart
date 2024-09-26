import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'truck_map_screen.dart';

class TrucksScreen extends StatelessWidget {
  final List<Map<String, dynamic>> mockTrucks = [
    {
      'id': '001',
      'name': 'Camión 1',
      'lat': 25.686614,
      'lng': -100.316113,
      'fuel': '280 L',
      'lastUpdate': '25-Sep-2024 14:00'
    },
    {
      'id': '002',
      'name': 'Camión 2',
      'lat': 25.676614,
      'lng': -100.306113,
      'fuel': '150 L',
      'lastUpdate': '25-Sep-2024 13:45'
    },
    {
      'id': '003',
      'name': 'Camión 3',
      'lat': 25.666614,
      'lng': -100.296113,
      'fuel': '200 L',
      'lastUpdate': '25-Sep-2024 13:30'
    },
    {
      'id': '004',
      'name': 'Camión 4',
      'lat': 25.656614,
      'lng': -100.286113,
      'fuel': '320 L',
      'lastUpdate': '25-Sep-2024 13:15'
    },
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
          return ListTile(
            title: Text(mockTrucks[index]['name']),
            subtitle: Text(
                'Combustible: ${mockTrucks[index]['fuel']} - Última actualización: ${mockTrucks[index]['lastUpdate']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TruckMapScreen(truck: mockTrucks[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
