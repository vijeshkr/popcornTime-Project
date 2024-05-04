import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/signup_screen.dart';
import 'package:popcorn_time/widgets/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.splash,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(20).h,
              height: size.height * 0.7,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15).r,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppTheme.splash,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15).h,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.h),
                        isDense: true,
                          isCollapsed: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: AppTheme.greyColor,
                          filled: true,
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                            color: Colors.black38,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.h),
                        isDense: true,
                        isCollapsed: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: AppTheme.greyColor,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
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
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => BottomNavigation(),
                        ),
                      );
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15).h,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                   Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10).h,
                      child: const Text(
                        'Or',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
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
                        padding: const EdgeInsets.all(15).h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/google.svg',
                              color: Colors.white,
                              height: 24.h,
                              width: 24.h,
                            ),
                             SizedBox(
                              width: 10.h,
                            ),
                             const Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 16,
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
                        'Don’t have account ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black38,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (_) => const SignupScreen(),
                            ),
                          );
                        },
                        child:  const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppTheme.splash,
                              fontSize: 16),
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
