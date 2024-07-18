import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/features/presentation/screens/login_screen.dart';
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
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white,
                        title: Text(
                          textAlign: TextAlign.center,
                          'Выйти?',
                          style: const TextStyle(
                              color: AppColors.extraDarkBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                'Точно выйти?',
                                style: const TextStyle(
                                    color: AppColors.mediumDarkGrey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          SizedBox(
                            width: 311.w,
                            height: 50.h,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor: AppColors.lightBlack,
                                    textStyle: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text('Да, точно')),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 311.w,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                textAlign: TextAlign.center,
                                'Нет, остаться',
                                style: const TextStyle(
                                    color: AppColors.extraDarkBlack,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
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
