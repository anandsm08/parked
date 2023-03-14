import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parked/pages/sos.dart';
//import 'package:parked/pages/userprofile.dart';
import 'package:parked/utils/bottomnavbar.dart';
import 'package:parked/utils/topbar.dart';
import 'package:parked/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const LatLng srcloc = LatLng(18.990352272926827, 73.12766939062205);
  static const LatLng destloc = LatLng(18.89331707766334, 73.17653275244949);

// MAP Routes

  // void getPolyPoints() async {
  //   PolylinePoints polylinepoint = PolylinePoints();

  //   PolylinePoints result = PolylinePoints.getRouteBetweenCoordinates(
  //     maps_api,
  //     PointLatLng(srcloc.latitude, srcloc.longitude),
  //     polylinepoint(destloc.latitude, destloc.longitude),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              SizedBox(
                height: screenheight * 0.03,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Hello, Ace",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
              Stack(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(10),
                    height: screenheight * 0.68,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: srcloc,
                        zoom: 13.5,
                      ),
                      markers: {
                        Marker(
                          markerId: MarkerId("currloc"),
                          position: srcloc,
                        ),
                        Marker(
                            markerId: MarkerId("destloc"), position: destloc),
                      },
                      circles: {
                        Circle(
                            circleId: CircleId("curloc"),
                            center: srcloc,
                            radius: 30,
                            fillColor: Colors.grey.withOpacity(0.4),
                            strokeColor: Colors.grey.shade800,
                            strokeWidth: 3),
                      },
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      //onTap: () => Get.to(() => const sosPage()),
                      onTap: () => Get.to(() => const SearchPage()),
                      decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Where are you?',
                          prefixIcon: const Icon(Icons.location_pin)),
                    ),
                  ),
                  SizedBox(
                    height: screenheight * 0.35,
                  ),
                  Positioned(
                    left: screenwidth * 0.3,
                    top: screenheight * 0.6,
                    right: screenwidth * 0.3,
                    child: GestureDetector(
                      child: Center(
                        child: Container(
                          height: screenheight * 0.07,
                          width: screenwidth * 0.45,
                          decoration: BoxDecoration(
                              color: Colors.green.shade600,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Reserve',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () => log('slot reserved'),
                    ),
                  ),
                ],
              ),
            ],
          )),
      //bottomNavigationBar: bottomNav(),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
