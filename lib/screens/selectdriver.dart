import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gari/data/data.dart';
import 'package:gari/screens/style.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_controller/google_maps_controller.dart';

class Selectdriver extends StatefulWidget {
  const Selectdriver({Key? key}) : super(key: key);

  @override
  _SelectdriverState createState() => _SelectdriverState();
}

class _SelectdriverState extends State<Selectdriver> {
  late GoogleMapController _googleMapController;

  Set<Marker> _markers = {};
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Mapstyle.mapStyle);
    _controllerGoogleMap.complete(controller);
    newGoogleMapController = controller;

    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('origin'),
          position: LatLng(24.9393199, 67.1220796),
          infoWindow:
              InfoWindow(title: "From Where", snippet: "current Location")));
    });
  }

  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;

  Position? currentPosition;
  var geolocator = Geolocator();
  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    LatLng latLngpPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLngpPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('origin'),
          position: latLngpPosition,
          infoWindow: InfoWindow(title: "Where to", snippet: "aaa")));
    });
  }

  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(24.9393199, 67.1220796), zoom: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: _kGooglePlex,
            myLocationButtonEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
          ),
          Positioned(
              child: ListTile(
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back,
                color: secondarycolor3,
              ),
            ),
          )),
          Positioned(
              bottom: 0,
              child: Container(
                color: secondarycolor1,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                        image: AssetImage(
                          "assets/images/default.jpeg",
                        ),
                      ),
                      title: Text("George Smith",
                          style:
                              TextStyle(color: secondarycolor5, fontSize: 16)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hyundai WaganR",
                            style:
                                TextStyle(color: secondarycolor5, fontSize: 9),
                          ),
                          Text(
                            "data",
                            style:
                                TextStyle(color: secondarycolor5, fontSize: 11),
                          )
                        ],
                      ),
                      trailing: Column(
                        children: [
                          ElevatedButton.icon(
                            icon: const Text(
                              'UPADATE',
                              style: TextStyle(fontSize: 9),
                            ),
                            label: Icon(
                              Icons.translate,
                              size: 7,
                            ),
                            onPressed: () {},
                          ),
                          Text("d")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.call),
                              label: Text("dd")),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.call),
                              label: Text("dd")),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.call),
                              label: Text("dd"))
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
