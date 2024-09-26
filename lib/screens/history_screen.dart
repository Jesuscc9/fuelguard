import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> historyData = [
    {
      'truckName': 'Camión 1',
      'date': DateTime.now().subtract(const Duration(hours: 1)),
      'consumption': '10 L'
    },
    {
      'truckName': 'Camión 2',
      'date': DateTime.now().subtract(const Duration(days: 1)),
      'consumption': '15 L'
    },
    // Añadir más datos según necesidad
  ];

  HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Consumo'),
      ),
      body: ListView.builder(
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          var relativeTime =
              DateFormat.yMMMd().add_Hm().format(historyData[index]['date']);
          var timeAgo =
              "${DateTime.now().difference(historyData[index]['date']).inHours} horas atrás";
          return ListTile(
            title: Text(
                '${historyData[index]['truckName']} - ${historyData[index]['consumption']}'),
            subtitle: Text('Fecha: $relativeTime - ($timeAgo)'),
          );
        },
      ),
    );
  }
}
