import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_auth_2/utils/colors/app_colors.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget({
    super.key,
    required this.hintText,
    this.controller,
    required this.obscureText,
    this.validator,
    this.suffixIcon,
  });
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 52.h,
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureText,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.mediumDarkGrey,
              fontSize: 16,
              fontWeight: FontWeight.w500),
          errorStyle: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
