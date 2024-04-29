import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popcorn_time/pages/login_screen.dart';
import '../constants/apptheme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.splash,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20).r,
              height: size.height * 0.8,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: AppTheme.splash,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.w),
                          isDense: true,
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: AppTheme.greyColor,
                          filled: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.w),
                          isDense: true,
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: AppTheme.greyColor,
                          filled: true,
                          hintText: 'Email or Phone',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.w),
                        isDense: true,
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: AppTheme.greyColor,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.w),
                        isDense: true,
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: AppTheme.greyColor,
                        filled: true,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.splash,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      onPressed: () {},
                      child:  Center(
                        child: Padding(
                          padding: EdgeInsets.all(15).r,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Center(
                    child: Padding(
                      padding: EdgeInsets.all(10).r,
                      child: Text(
                        'Or',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.splash,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/google.svg',
                              color: Colors.white,
                              height: 24.h,
                              width: 24.w,
                            ),
                             SizedBox(
                              width: 10.w,
                            ),
                             Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Already have an account ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black38,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => LoginScreen(),
                            ),
                          );
                        },
                        child:  Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.splash,
                              fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
