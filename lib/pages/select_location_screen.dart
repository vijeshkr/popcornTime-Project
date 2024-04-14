import 'package:flutter/material.dart';

import '../constants/apptheme.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({super.key});

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppTheme.appBarColor,
        title: Text(
          'Select Location'
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.greyColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.my_location,
                          color: Colors.black45,),
                          SizedBox(width: 15,),
                          Text('My Current Location',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                    color: Colors.black45,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: AppTheme.greyColor,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
