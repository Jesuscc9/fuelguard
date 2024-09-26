import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  final List<String> mockAlerts = [
    'Nivel de combustible bajo en el camión #123',
    'Intento de extracción de combustible detectado en el camión #234',
  ];

  AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas de Seguridad'),
      ),
      body: ListView.builder(
        itemCount: mockAlerts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mockAlerts[index]),
          );
        },
      ),
    );
  }
}
