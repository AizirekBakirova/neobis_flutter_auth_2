import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/features/presentation/screens/login_screen.dart';
import 'dart:async';

import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          top: 50,
          right: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Lorby',
              style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(height: 15.h),
            Text(
              'Твой личный репетитор',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 329.4.w,
              height: 350.h,
              child: Image.asset('assets/images/illustration.png'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
