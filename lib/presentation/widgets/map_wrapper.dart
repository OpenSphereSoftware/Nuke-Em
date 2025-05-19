import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nukeem/data/models/latlng_model.dart';
import 'package:nukeem/main.dart';
import 'package:nukeem/presentation/style.dart';

class GoogleMapsWrapper extends StatefulWidget {
  final Set<Marker> markers;
  final Set<Circle> circles;
  final Function(LatLngModel) onMapTaped;
  final Function() onCameraIdle;
  final Function(CameraPosition) onCameraMove;
  final Function(GoogleMapController) onMapCreated;
  final bool myLocationEnabled;
  final double initialZoom;
  final double? initialBearing;
  final LatLngModel? initLatLng;
  final Color accentColor;
  const GoogleMapsWrapper(
      {super.key,
      required this.markers,
      required this.circles,
      required this.onMapTaped,
      required this.onMapCreated,
      required this.myLocationEnabled,
      required this.initialZoom,
      this.initialBearing,
      required this.onCameraIdle,
      required this.accentColor,
      this.initLatLng,
      required this.onCameraMove});

  @override
  State<GoogleMapsWrapper> createState() => _GoogleMapsWrapperState();
}

class _GoogleMapsWrapperState extends State<GoogleMapsWrapper> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: AppStyle.colors.accent.withOpacity(0.35), // glow color
              blurRadius: 35, // softness of the glow
              spreadRadius: 5, // how far the glow spreads
              offset: Offset(4, 4))
        ],
      ),
      child: Stack(
        children: [
          MouseRegion(
            onEnter: (_) => changeCursorImage('assets/images/curser_click.png'),
            onExit: (_) => changeCursorImage('assets/images/curser_normal.png'),
            child: Material(
              child: GoogleMap(
                scrollGesturesEnabled: true,
                style: mapStyle,
                onTap: (latlng) => widget.onMapTaped(LatLngModel(lat: latlng.latitude, lng: latlng.longitude)),
                markers: widget.markers,
                circles: widget.circles,
                buildingsEnabled: false,
                mapToolbarEnabled: false,
                myLocationEnabled: widget.myLocationEnabled,
                compassEnabled: false,
                tiltGesturesEnabled: false,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                mapType: MapType.normal,
                minMaxZoomPreference: const MinMaxZoomPreference(0, 19),
                padding: EdgeInsets.only(bottom: AppStyle.spacings.xs, left: AppStyle.spacings.l),
                initialCameraPosition: CameraPosition(
                  target: widget.initLatLng != null
                      ? LatLng(widget.initLatLng!.lat, widget.initLatLng!.lng)
                      : const LatLng(49.5891, 11.0119),
                  zoom: widget.initialZoom,
                  bearing: widget.initialBearing ?? 60,
                  tilt: 20,
                ),
                onMapCreated: (GoogleMapController googleMapController) async {
                  widget.onMapCreated(googleMapController);
                  Future.delayed(Duration(milliseconds: 80), () {
                    if (mounted) {
                      setState(() {
                        _visible = false;
                      });
                    }
                  });
                },
                onCameraIdle: () => widget.onCameraIdle(),
                onCameraMove: (p) => widget.onCameraMove(p),
              ),
            ),
          ),
          IgnorePointer(
            ignoring: true,
            child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 350),
                child: Container(
                  color: AppStyle.colors.background,
                )),
          ),
        ],
      ),
    );
  }
}

const String mapStyle = '''[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#181C20"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#C8D7FF"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#212121"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#C8D7FF"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#C8D7FF"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#181C20"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1b1b1b"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#343848"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8C96AF"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#343848"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#343848"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8C96AF"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#000000"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#3d3d3d"
      }
    ]
  }
]''';
