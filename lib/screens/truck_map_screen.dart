import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TruckMapScreen extends StatelessWidget {
  final Map<String, dynamic> truck;

  const TruckMapScreen({super.key, required this.truck});

  @override
  Widget build(BuildContext context) {
    LatLng position = LatLng(truck['lat'], truck['lng']);
    return Scaffold(
      appBar: AppBar(
        title: Text(truck['name']),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Simulación del modo edición de geocerca
              print("Editar geocerca para ${truck['name']}");
            },
          ),
        ],
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: position,
          zoom: 14.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId(truck['id'].toString()),
            position: position,
            infoWindow: InfoWindow(
              title: truck['name'],
              snippet: 'Fuel level: ${truck['fuel']}',
            ),
          ),
        },
      ),
    );
  }
}
