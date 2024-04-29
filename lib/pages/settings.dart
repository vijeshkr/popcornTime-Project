import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import 'package:popcorn_time/pages/select_location_screen.dart';
import 'login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15).r,
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectLocationScreen(),),
                );
              },
              title: Text('My Location'),
              subtitle: Text(myLocation),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15.r,),
            ),
            Divider(thickness: 1.w,color: Colors.grey,),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Comeback Soon!',style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),),
                      content: Text('Are you sure you want to delete your account ?',style: TextStyle(
                          color: Colors.black38
                      ),),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cancel',style: TextStyle(
                            color: Colors.red,
                          ),),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10).w,
                            child: Text('Yes, Delete',
                              style: TextStyle(color: Colors.white),),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15.r,),
              title: Text(
                'Delete Account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Divider(thickness: 1.w,color: Colors.grey,),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Comeback Soon!',style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),),
                      content: Text('Are you sure you want to logout?',style: TextStyle(
                          color: Colors.black38
                      ),),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Cancel',style: TextStyle(
                            color: Colors.red,
                          ),),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10).w,
                            child: Text('Yes, Logout',
                              style: TextStyle(color: Colors.white),),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15.r,),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Divider(thickness: 1.w,color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
