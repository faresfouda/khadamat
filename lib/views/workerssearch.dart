import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:khadamat/views/workerslist.dart';

class Workerssearch extends StatefulWidget {
  const Workerssearch({super.key});

  @override
  State<Workerssearch> createState() => _WorkerssearchState();
}

class _WorkerssearchState extends State<Workerssearch> {
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(36, 36))),
          Padding(
            padding: const EdgeInsets.only(top: 32, right: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
              SizedBox(
                width: 300,
                child: TextField(
                  onSubmitted: (value) {
                    Get.to(const Workerslist());
                  },
                  focusNode: _focusNode,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: InputDecoration(
                      hintText: "ابحث",
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      prefixIcon: const Image(
                          image: AssetImage('assets/search-normal.png')),
                      filled: true,
                      fillColor: const Color(0xFFE8E8E8).withAlpha(180),
                      focusedBorder: const UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
              ),
            ]),
          )
        ],
      ),
    );
  }
}
