import 'package:flutter/material.dart';

import '../constants/apptheme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.statusBar,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppTheme.statusBar,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),)
              ),
            ),
            Positioned(
              top: 90,
              left: MediaQuery.of(context).size.width * 0.5 - 60,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 3),
                      borderRadius: BorderRadius.circular(65),

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(65),
                      child: Image.network(
                          'https://media.licdn.com/dms/image/D4D03AQF8iQXzw-aZZg/profile-displayphoto-shrink_800_800/0/1702019275221?e=1718236800&v=beta&t=-qZHuAUC7YYsO5zy8Un0RE-befzfvMrPdxDrpoDYoZE',
                        width: 120,
                        height: 120,
                      ),
                    )
                  ),
                )
              ],
            ),),
            Positioned(
                top: 170,
                left: MediaQuery.of(context).size.width * 0.53 ,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppTheme.statusBar,
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),

            ),),
          ],
        ),
      ),
    );
  }
}
