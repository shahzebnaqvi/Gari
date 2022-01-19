import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gari/screens/booknow.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_controller/google_maps_controller.dart';

Color primarycolor = Colors.yellow;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            zoomControlsEnabled: true,
          ),
          Positioned(
              child: ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text("Book Your Ride"),
          )),
          Positioned(
            right: 0,
            left: 0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.circle,
                        size: 16,
                      ),
                      onPressed: () {},
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    suffixStyle: const TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.width * 0.4,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
                  child: Column(
                    children: [
                      Text(
                        "Car",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(
                          Icons.car_rental,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                      Text(
                        "Budget",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(
                          Icons.car_rental,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                      Text(
                        "Tuk",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(
                          Icons.car_rental,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                      Text(
                        "City",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(
                          Icons.car_rental,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                      Text(
                        "Van",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width * 0.03),
                        child: Icon(
                          Icons.car_rental,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.menu)],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.02,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(490),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primarycolor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Booknow()),
                        );
                      },
                      child: Text("I am Here!"))),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.yellow,
              onPressed: () {
                locatePosition();
              },
              child: new Icon(Icons.pin_drop),
            ),
          )
        ],
      ),
    );
  }
}
