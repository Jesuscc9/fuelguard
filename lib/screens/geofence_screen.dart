import 'package:flutter/material.dart';

class GeofenceScreen extends StatelessWidget {
  final List<String> mockGeofences = [
    'Zona A - Activa',
    'Zona B - Activa',
    'Zona C - Desactivada',
  ];

  GeofenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geovallas'),
      ),
      body: ListView.builder(
        itemCount: mockGeofences.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mockGeofences[index]),
          );
        },
      ),
    );
  }
}
