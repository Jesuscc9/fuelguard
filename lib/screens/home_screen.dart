import 'package:flutter/material.dart';
import 'package:fuelguard/screens/map_screen.dart';
import 'trucks_screen.dart';
import 'history_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FuelGuard Dashboard'),
        backgroundColor: Colors.deepPurple, // Color del AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding general para el cuerpo
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrucksScreen())),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                      Colors.deepPurple, // Color del texto en el botón
                  textStyle: const TextStyle(fontSize: 16), // Tamaño del texto
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0), // Padding del botón
                ),
                child: const Text('Monitoreo de Camiones'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HistoryScreen())),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  textStyle: const TextStyle(fontSize: 16),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                ),
                child: const Text('Historial de Consumo'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MapScreen())),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  textStyle: const TextStyle(fontSize: 16),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 24.0),
                ),
                child: const Text('Seguimiento en vivo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
