import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Workerssearch extends StatelessWidget {
  const Workerssearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              style: Theme.of(context).textTheme.labelSmall,
              decoration: InputDecoration(
                  hintText: 'ابحث',
                  hintStyle: Theme.of(context).textTheme.labelSmall,
                  prefixIcon: const Image(
                      image: AssetImage('assets/search-normal.png')),
                  filled: true,
                  fillColor: const Color(0xFFE8E8E8).withAlpha(180),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE8E8E8)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
