import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gari/screens/booknow.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Color primarycolor = Colors.yellow;

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
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            markers: _markers,
            initialCameraPosition: CameraPosition(
                target: LatLng(24.9393199, 67.1220796), zoom: 15),
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.07,
                ),
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.menu)],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.03,
                ),
                Container(
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
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.2,
                ),
                Row(
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
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.06),
                      child: Column(
                        children: [
                          Text(
                            "Car",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Icon(
                              Icons.car_rental,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          Text(
                            "Budget",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Icon(
                              Icons.car_rental,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          Text(
                            "Tuk",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Icon(
                              Icons.car_rental,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          Text(
                            "City",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Icon(
                              Icons.car_rental,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ),
                          Text(
                            "Van",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.width * 0.03),
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
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
                Container(
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
                        child: Text("I am Here!")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
