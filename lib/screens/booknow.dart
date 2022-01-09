import 'package:flutter/material.dart';
import 'package:gari/screens/mapstyle.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Color primarycolor = Colors.yellow;
Color secondarycolor = Colors.grey;
Color secondarycolor2 = Colors.blueGrey;

class Booknow extends StatefulWidget {
  const Booknow({Key? key}) : super(key: key);

  @override
  _BooknowState createState() => _BooknowState();
}

class _BooknowState extends State<Booknow> {
  String longitude = "";
  String Latitude = "";
  Set<Marker> _markers = {};
  getcurrentlocation() async {
    print("object");
    final geoposition = await GeolocatorPlatform.instance.getCurrentPosition();
    print(geoposition.latitude);

    setState(() {
      longitude = "ddssd";
    });
  }

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                getcurrentlocation();
                              },
                              child: Text(
                                "Car",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03),
                              ),
                            ),
                            Icon(
                              Icons.car_rental,
                              size: MediaQuery.of(context).size.width * 0.09,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
                            Text(
                              "${longitude}Budget",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.03),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Icon(
                                Icons.car_rental,
                                size: MediaQuery.of(context).size.width * 0.09,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * 0.05),
                        child: Column(
                          children: [
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
                ),
                Container(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.03,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: secondarycolor2),
                  child: Center(
                    child: Text(
                        "To get the estimation please enter the drop of location"),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.05),
                              primary: secondarycolor,
                            ),
                            onPressed: () {},
                            child: Text("Cash ")),
                      ),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.05),
                              primary: secondarycolor,
                            ),
                            onPressed: () {},
                            child: Text("Promo Code")),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.06),
                          primary: primarycolor,
                        ),
                        onPressed: () {},
                        child: Text("Book Now")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
