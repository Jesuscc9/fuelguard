import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  // Mock data para las ubicaciones de los camiones actualizados para Monterrey
  final List<Map<String, dynamic>> mockTruckLocations = [
    {
      'name': 'Camión 1',
      'lat': 25.686614,
      'lng': -100.316113
    }, // Coordenadas de Monterrey
    {
      'name': 'Camión 2',
      'lat': 25.676614,
      'lng': -100.306113
    }, // Cercanías de Monterrey
    {
      'name': 'Camión 3',
      'lat': 25.666614,
      'lng': -100.296113
    }, // Cercanías de Monterrey
    {
      'name': 'Camión 4',
      'lat': 25.656614,
      'lng': -100.286113
    }, // Cercanías de Monterrey
  ];

  final LatLng _center =
      const LatLng(25.686614, -100.316113); // Coordenada central de Monterrey

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa de Camiones'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 12.0,
        ),
        markers: mockTruckLocations.map((truck) {
          return Marker(
            markerId: MarkerId(truck['name']),
            position: LatLng(truck['lat'], truck['lng']),
            infoWindow: InfoWindow(title: truck['name']),
          );
        }).toSet(),
      ),
    );
  }
}
