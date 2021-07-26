import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GGoogleMap extends StatefulWidget {
  const GGoogleMap({ Key? key }) : super(key: key);

  @override
  _GGoogleMapState createState() => _GGoogleMapState();
}

class _GGoogleMapState extends State<GGoogleMap> {
  static final LatLng _mapCenter = LatLng(19.018255973653343, 72.84793849278007);
  static final CameraPosition _initialPosition = CameraPosition(
    target: _mapCenter, zoom: 11, tilt: 0, bearing: 0
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Google map"),
      ),
      body: GoogleMap(initialCameraPosition: _initialPosition,),
      
    );
  }
}
