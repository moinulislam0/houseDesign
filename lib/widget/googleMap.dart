import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GooglemapWidget extends StatefulWidget {
  const GooglemapWidget({super.key});

  @override
  State<GooglemapWidget> createState() => _GooglemapWidgetState();
}

class _GooglemapWidgetState extends State<GooglemapWidget> {
  Position? currentLocation;
  GoogleMapController? mapController;

  @override
  void initState() {
    super.initState();
    _determinePosition();
    _listenToLatestLocation();
  }
  Future<void> _determinePosition() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("Permission denied");
      return;
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      currentLocation = position;
    });

 
    if (mapController != null) {
      mapController!.animateCamera(
        CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)),
      );
    }
  }

 
  void _listenToLatestLocation() {
    Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 5,
      ),
    ).listen((Position position) {
      setState(() {
        currentLocation = position;
      });

   
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: currentLocation != null
              ? LatLng(currentLocation!.latitude, currentLocation!.longitude)
              : const LatLng(23.7853,90.4113),
          zoom: 15,
        ),
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;

          
          if (currentLocation != null) {
            mapController!.animateCamera(
              CameraUpdate.newLatLng(
                LatLng(currentLocation!.latitude, currentLocation!.longitude),
              ),
            );
          }
        },
      ),
    );
  }
}
