import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/features/presentation/screens/home_screen.dart';
import 'package:neobis_flutter_auth_2/features/presentation/screens/registration_screen.dart';
import 'package:neobis_flutter_auth_2/features/widgets/elevated_btn_widget.dart';
import 'package:neobis_flutter_auth_2/features/widgets/text_field.dart';
import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void _goToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegistrationScreen(),
      ),
    );
  }

  void _signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
        .then(
          (value) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
        );
    Navigator.pop(context);

    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraLightWhite,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 13, top: 16, right: 13, bottom: 16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: SizedBox(
                    width: 186.93.w,
                    height: 194.15.h,
                    child: Image.asset('assets/images/Group 10.png')),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Вэлком бэк!',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.extraDarkBlack),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFiledWidget(
                controller: _emailController,
                validator: (value) {
                  if (value != _emailController) {
                    return 'Неверный логин или пароль';
                  }
                  return null;
                },
                hintText: 'Введи туда-сюда логин',
                obscureText: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFiledWidget(
                controller: _passwordController,
                validator: (value) {
                  if (value != _passwordController) {
                    return 'Неверный логин или пароль';
                  }
                  return null;
                },
                hintText: 'Пароль (тоже введи)',
                obscureText: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedBtnWidget(
                text: 'Войти',
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: _goToRegister,
                child: Text(
                  'У меня еще нет аккаунта',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightBlack),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
