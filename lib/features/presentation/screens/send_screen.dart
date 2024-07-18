import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  void _showMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.black45, fontSize: 20),
              ),
            ),
          );
        });
  }

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
            Center(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Регистрация',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.extraDarkBlack),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'Выслали письмо со ссылкой для завершения регистрации на example@gmail.com',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(height: 15.h),
            Text(
              textAlign: TextAlign.center,
              'Если письмо не пришло, не спеши ждать совиную почту - лучше проверь ящик "Спам"',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(height: 15.h),
            Text(
              textAlign: TextAlign.center,
              '(´｡• ω •｡`)',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.extraDarkBlack),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 224.4.w,
              height: 231.h,
              child: Image.asset('assets/images/Group 13.png'),
            ),
            SizedBox(
              height: 60.h,
            ),
            GestureDetector(
              onTap: Navigator.of(context).pop,
              child: GestureDetector(
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
                            'Мы выслали еще одно письмо на указанную тобой почту example@gmail.com',
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
                                  'Не забудь проверить ящик "Спам"!11!!!!',
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
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Понятно!!1!')),
                            )
                          ],
                        );
                      });
                },
                child: Text(
                  'Письмо не пришло',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.extraDarkBlack),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
