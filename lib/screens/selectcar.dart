import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gari/data/data.dart';
import 'package:gari/screens/selectdriver.dart';
import 'package:gari/screens/style.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_controller/google_maps_controller.dart';

class Selectcar extends StatefulWidget {
  const Selectcar({Key? key}) : super(key: key);

  @override
  _SelectcarState createState() => _SelectcarState();
}

class _SelectcarState extends State<Selectcar> {
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
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: carname.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: secondarycolor3,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    )),
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.019),
                                width:
                                    MediaQuery.of(context).size.width * 0.281,
                                height:
                                    MediaQuery.of(context).size.width * 0.41,
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width * 0.1,
                                    bottom: MediaQuery.of(context).size.width *
                                        0.03,
                                    left: MediaQuery.of(context).size.width *
                                        0.02,
                                    right: MediaQuery.of(context).size.width *
                                        0.01),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        carname[index],
                                        style:
                                            TextStyle(color: secondarycolor5),
                                      ),
                                      Text(
                                        carrestimatedprice[index],
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ]),
                              ),
                              Positioned(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.12,
                                child: Image(
                                  image: AssetImage(
                                    carimages[index],
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.06),
                        primary: primarycolor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Selectdriver()),
                        );
                      },
                      child: Text("RIDE NOW",
                          style: TextStyle(
                              letterSpacing: 6, color: secondarycolor3))))
            ]),
          ),
        ],
      ),
    );
  }
}
