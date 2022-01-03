import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Mapstyle.mapStyle);
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('id- 1'),
          position: LatLng(24.9393199, 67.1220796),
          infoWindow: InfoWindow(title: "Where to", snippet: "aaa")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
                target: LatLng(24.9393199, 67.1220796), zoom: 15),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("d"))
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextField(
                    style: TextStyle(color: Colors.red),
                    decoration:
                        InputDecoration(fillColor: Colors.white, filled: true),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
