import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/history_screen.dart';
import 'screens/alerts_screen.dart';
import 'screens/geofence_screen.dart';
import 'screens/trucks_screen.dart'; // Nueva pantalla
import 'screens/map_screen.dart'; // Nueva pantalla

void main() {
  runApp(const FuelGuardApp());
}

class FuelGuardApp extends StatelessWidget {
  const FuelGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FuelGuard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      routes: {
        '/history': (context) => HistoryScreen(),
        '/alerts': (context) => AlertsScreen(),
        '/geofence': (context) => GeofenceScreen(),
        '/trucks': (context) => TrucksScreen(), // Ruta para camiones
        '/map': (context) => const MapScreen(), // Ruta para mapa
      },
    );
  }
}
