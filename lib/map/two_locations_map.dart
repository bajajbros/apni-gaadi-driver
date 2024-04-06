import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

import 'package:mapbox_polyline_points/mapbox_polyline_points.dart';

class NavigationMap extends StatefulWidget {
  final LatLng destination;
  const NavigationMap(this.destination);

  @override
  State<NavigationMap> createState() => _NavigationMapState();
}

class _NavigationMapState extends State<NavigationMap> {
  @override
  void initState() {
    super.initState();
    _checkLocationPermission();
    Timer.periodic(Duration(seconds: 3), (timer) {
      _checkLocationPermission();
    });
    markers.add(
      Marker(
        point:
            LatLng(widget.destination.latitude, widget.destination.longitude),
        child: Icon(
          Icons.location_on,
          color: Colors.red,
          size: 42,
        ),
      ),
    );
    // getCordinates();
  }

  getCordinates(LatLng currentLocation) async {
    MapboxpolylinePoints mapboxPolylinePoints = MapboxpolylinePoints();
    MapboxPolylineResult result =
        await mapboxPolylinePoints.getRouteBetweenCoordinates(
            "pk.eyJ1IjoiYXBuaS1nYWFkaSIsImEiOiJjbHNvYnQyNjcwMm53MmtvOHhpa2lrdDNjIn0.lN492h_vyijisfpwrzkHyQ",
            PointLatLng(
                latitude: currentLocation.latitude,
                longitude: currentLocation.longitude),
            PointLatLng(
                latitude: widget.destination.latitude,
                longitude: widget.destination.longitude),
            TravelType.driving);
    for (var element in result.points[0]) {
      setState(() {
        points.add(LatLng(element.latitude, element.longitude));
      });
    }
  }

  Future<void> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print("Location permission denied");
        return;
      }
    }

    _getLocation();
  }

  Future<void> _getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        markers.add(
          Marker(
            point: LatLng(position.latitude, position.longitude),
            child: Icon(
              Icons.local_taxi,
              color: Colors.red,
              size: 42,
            ),
          ),
        );
        points.isEmpty
            ? getCordinates(
                LatLng(position.latitude, position.longitude),
              )
            : null;
      });
    } catch (e) {
      print(e);
    }
  }

  List<Marker> markers = [];

  List<LatLng> points = [];

  @override
  Widget build(BuildContext context) {
    Polyline polyline = Polyline(
      points: points,
      color: Colors.blue,
      strokeWidth: 4.0,
    );

    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(initialCenter: LatLng(28.7041, 77.1025)
            // center: LatLng(37.7749, -122.4194), // Initial map center
            // zoom: 5.0, // Initial zoom level
            ),
        children: [
          TileLayer(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoiYXBuaS1nYWFkaSIsImEiOiJjbHNvYnQyNjcwMm53MmtvOHhpa2lrdDNjIn0.lN492h_vyijisfpwrzkHyQ",
            additionalOptions: const {
              'accessToken':
                  'pk.eyJ1IjoiYXBuaS1nYWFkaSIsImEiOiJjbHNvYnQyNjcwMm53MmtvOHhpa2lrdDNjIn0.lN492h_vyijisfpwrzkHyQ',
              'id': 'mapbox/streets-v11', // You can use other Mapbox styles
            },
          ),
          PolylineLayer(polylines: [polyline]),
          markers.isEmpty ? Container() : MarkerLayer(markers: markers)
        ],
      ),
    );
  }
}
