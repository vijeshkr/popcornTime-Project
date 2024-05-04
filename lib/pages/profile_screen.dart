import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/privacy_policy.dart';
import 'package:popcorn_time/pages/help_center.dart';
import 'package:popcorn_time/pages/login_screen.dart';
import 'package:popcorn_time/pages/settings.dart';
import 'package:popcorn_time/pages/your_orders.dart';
import '../constants/apptheme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool isEdit = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.statusBar,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Stack(
            children: [
              Container(
                height: 150.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: AppTheme.statusBar,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90).h,
                // top: 90,
                // left: MediaQuery.of(context).size.width * 0.5 - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(65).r,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(65).r,
                            child: Image.network(
                              'https://media.licdn.com/dms/image/D4D03AQF8iQXzw-aZZg/profile-displayphoto-shrink_800_800/0/1702019275221?e=1718236800&v=beta&t=-qZHuAUC7YYsO5zy8Un0RE-befzfvMrPdxDrpoDYoZE',
                              width: 120.h,
                              height: 120.h,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ).h,
                      child: const Text('Name'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ).h,
                      child: TextFormField(
                        readOnly: isEdit,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(4).h,
                            child: Container(
                              height: 25.h,
                              width: 25.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20).r,
                                color: const Color(0xffe4edff),
                              ),
                              child: const Icon(
                                Icons.person_outline,
                                color: Color(0xff4c7eff),
                              ),
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isEdit ? isEdit = false : isEdit = true ;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4).h,
                              child: const Icon(
                                Icons.edit_outlined,
                                color: Color(0xff4c7eff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ).h,
                      child: const Text('Email'),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ).h,
                        child: TextFormField(
                          readOnly: isEdit,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4).h,
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20).r,
                                  color: const Color(0xffe8dbff),
                                ),
                                child: const Icon(
                                  Icons.email_outlined,
                                  color: Color(0xffcc80ea),
                                ),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isEdit ? isEdit = false : isEdit = true ;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4).h,
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 70,
                      ).h,
                      child: const Text('Mobile'),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ).h,
                        child: TextFormField(
                          readOnly: isEdit,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4).h,
                              child: Container(
                                height: 25.h,
                                width: 25.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20).r,
                                  color: const Color(0xffcceff0),
                                ),
                                child: const Icon(
                                  Icons.phone_android_outlined,
                                  color: Color(0xff48eb9f),
                                ),
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isEdit ? isEdit = false : isEdit = true ;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4).h,
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color(0xff4c7eff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const YourOrders()),
                        );
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      leading: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 20,
                      ),
                      title: const Text('Your Orders'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsScreen()),
                        );
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      leading: const Icon(
                        Icons.settings_outlined,
                        size: 20,
                      ),
                      title: const Text('Settings'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpCenterScreen()),
                        );
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      leading: const Icon(
                        Icons.help_outline,
                        size: 20,
                      ),
                      title: const Text('Help Center'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PrivacyPolicy()),
                        );
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      leading: const Icon(
                        Icons.privacy_tip_outlined,
                        size: 20,
                      ),
                      title: const Text('Privacy Policy'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const ListTile(
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      leading: Icon(
                        Icons.share_outlined,
                        size: 20,
                      ),
                      title: Text('Share'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15).h,
                      child: const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              surfaceTintColor: Colors.blue.shade100,
                              title: const Text(
                                'Comeback Soon!',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              content: const Text(
                                'Are you sure you want to logout?',
                                style: TextStyle(color: Colors.black38),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.red),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: 10).h,
                                    child: const Text(
                                      'Yes, Logout',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const LoginScreen()),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      leading: const Icon(
                        Icons.exit_to_app_outlined,
                        color: Colors.red,
                        size: 20,
                      ),
                      title: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 170.h,
                left: MediaQuery.of(context).size.width * 0.53,
                child: Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25).r,
                    color: AppTheme.statusBar,
                  ),
                  child: const Icon(
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
