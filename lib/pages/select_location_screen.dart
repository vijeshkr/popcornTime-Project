import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import '../constants/apptheme.dart';
import '../data/location_data.dart';
import '../widgets/bottom_navigation.dart';
import 'package:geolocator/geolocator.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  List<String> filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    filteredSuggestions = allLocations;
  }

  void filterSuggestions(String query) {
    setState(() {
      filteredSuggestions = allLocations
          .where((location) =>
              location.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Future<void> _determinePosition() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        await Geolocator.openLocationSettings();
        throw 'Location services are disabled.';
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw 'Location permissions are denied';
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw 'Location permissions are permanently denied, we cannot request permissions.';
      }

      Position position = await Geolocator.getCurrentPosition();
      getPlaceFromLatLong(position);
    } catch (e) {
      print(e);
    }
  }

  Future<void> getPlaceFromLatLong(Position position) async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    myLocation = '${place.locality}';
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Location'),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20).h,
                child: GestureDetector(
                  onTap: () async {
                    await _determinePosition();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppTheme.greyColor,
                      borderRadius: BorderRadius.circular(10).r,
                    ),
                    padding: const EdgeInsets.all(15).h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.my_location,
                          color: Colors.black45,
                        ),
                        SizedBox(width: 15.h),
                        const Text(
                          'My Current Location',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15).h,
                child: TextField(
                  onChanged: (value) {
                    filterSuggestions(value);
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 15.h , horizontal: 10.h),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black45,
                      size: 23,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5).r,
                      borderSide: BorderSide.none,
                    ),
                    fillColor: AppTheme.greyColor,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredSuggestions.length,
                  itemBuilder: (context, index) {
                    final suggestion = filteredSuggestions[index];
                    return ListTile(
                      title: Text(suggestion),
                      onTap: () {
                        setState(() {
                          myLocation = suggestion;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavigation()),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
