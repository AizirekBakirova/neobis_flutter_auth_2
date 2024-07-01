import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraLightWhite,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 50,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'С возвращением!',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(height: 15.h),
            Text(
              'Lorby - твой личный репетитор',
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
            SizedBox(
              height: 60.h,
            ),
            GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Text(
                'Выйти',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.extraDarkBlack),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
