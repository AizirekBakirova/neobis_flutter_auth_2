import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/features/presentation/screens/home_screen.dart';
import 'package:neobis_flutter_auth_2/features/widgets/elevated_btn_widget.dart';
import 'package:neobis_flutter_auth_2/features/widgets/text_field.dart';
import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _signUserUp() async {
    if (_passwordController.text == _confirmPasswordController.text) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      }).onError((error, stackTrace) {});
    } else {
      _showErrorMessage('Passwords dont match!');
    }
  }

  void _showErrorMessage(String message) {
    const Text('Пароли не совпадают');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraLightWhite,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 13, top: 16, right: 13, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const SizedBox(
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
            Center(
              child: Text(
                'Создать аккаунт\nLorby',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.extraDarkBlack),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFiledWidget(
              hintText: 'Введи адрес почты',
              obscureText: false,
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFiledWidget(
              hintText: 'Придумай логин',
              obscureText: false,
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFiledWidget(
              hintText: 'Создай пароль',
              obscureText: true,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              '• От 8 до 15 символов',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.mediumDarkGrey,
              ),
            ),
            Text(
              '• Строчные и прописные буквы',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.mediumDarkGrey,
              ),
            ),
            Text(
              '• Минимум 1 цифра',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.mediumDarkGrey,
              ),
            ),
            Text(
              '• Минимум 1 спецсимвол (!, ", #, ...)',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.mediumDarkGrey,
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            const TextFiledWidget(
              hintText: 'Повтори пароль',
              obscureText: true,
            ),
            SizedBox(
              height: 20.sp,
            ),
            ElevatedBtnWidget(
              text: 'Далее',
              onPressed: _signUserUp,
            ),
            SizedBox(
              height: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
