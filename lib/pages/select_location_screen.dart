import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import '../constants/apptheme.dart';
import '../data/location_data.dart';
import '../widgets/bottom_navigation.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({ Key? key}) : super(key: key);

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
          location.toLowerCase().contains(query.toLowerCase(),),)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppTheme.greyColor,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.my_location,
                          color: Colors.black45,
                        ),
                        SizedBox(width: 15),
                        Text(
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
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  onChanged: (value) {
                    filterSuggestions(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: AppTheme.greyColor,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(
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
                        myLocation = suggestion;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigation()),
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
