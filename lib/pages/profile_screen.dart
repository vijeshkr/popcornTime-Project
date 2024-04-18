import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:popcorn_time/controllers/profile_controller.dart';

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
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Stack(
            children: [
              Container(
                height: 150,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppTheme.statusBar,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90),
                // top: 90,
                // left: MediaQuery.of(context).size.width * 0.5 - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(65),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(65),
                            child: Image.network(
                              'https://media.licdn.com/dms/image/D4D03AQF8iQXzw-aZZg/profile-displayphoto-shrink_800_800/0/1702019275221?e=1718236800&v=beta&t=-qZHuAUC7YYsO5zy8Un0RE-befzfvMrPdxDrpoDYoZE',
                              width: 120,
                              height: 120,
                            ),
                          )),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,),
                      child: Text('Name'),
                    ),
                    Obx(() =>
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          readOnly: ProfileController.instance.isEdit.value,
                          style: TextStyle(
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffe4edff),
                                ),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                ProfileController.instance.toggleEdit();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,),
                      child: Text('Email'),
                    ),
                    Obx( () =>
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          readOnly: ProfileController.instance.isEdit.value,
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffe8dbff),
                                ),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Color(0xffcc80ea),
                                ),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                      ProfileController.instance.toggleEdit();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 70,),
                      child: Text('Mobile'),
                    ),
                    Obx( () =>
                       Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,),
                        child: TextFormField(
                          readOnly: ProfileController.instance.isEdit.value,
                          style: TextStyle(
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffcceff0),
                                ),
                                child: Icon(
                                  Icons.phone_android_outlined,
                                  color: Color(0xff48eb9f),
                                ),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                ProfileController.instance.toggleEdit();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1,color: Colors.grey,),
                    ListTile(
                      leading: Icon(Icons.shopping_bag_outlined,
                        size: 20,),
                      title: Text('Your Orders'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings_outlined,
                        size: 20,),
                      title: Text('Settings'),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline,
                      size: 20,),
                      title: Text('Help Center'),
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip_outlined,
                        size: 20,),
                      title: Text('Privacy Policy'),
                    ),
                    ListTile(
                      leading: Icon(Icons.share_outlined,
                        size: 20,),
                      title: Text('Share'),
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app_outlined,
                        color: Colors.red,
                        size: 20,),
                      title: Text('Logout',
                      style: TextStyle(
                        color: Colors.red,
                      ),),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 170,
                left: MediaQuery.of(context).size.width * 0.53,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
