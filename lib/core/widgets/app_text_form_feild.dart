import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/Styles.dart';
import '../theming/colors.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide:
              const BorderSide(color: ColorsManger.mainBlue, width: 1.3),
        ),
        enabledBorder:enabledBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide:
              const BorderSide(color: ColorsManger.Ligter_gray, width: 1.3),
        ),
        hintStyle:hintStyle ?? TextStyles.font14Light_grayregular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor:backgroundColor ?? ColorsManger.more_Ligter_gray,
        filled: true
      ),
      obscureText:isObscureText ??  false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
