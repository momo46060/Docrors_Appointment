import 'dart:ui';
import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_wight_helper.dart';

class TextStyles {
  static TextStyle font24Blake700Wight = TextStyle(
      color:Colors.black,
      fontSize: 24.sp,
      fontWeight: FontWeight.bold
  );
   static TextStyle font16WihteSemiBold = TextStyle(
      color:Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500
  );
   static TextStyle font24blueBold = TextStyle(
      color:ColorsManger.mainBlue,
      fontSize: 24.sp,
      fontWeight: FontWightHelper.bold
  );
  static TextStyle font14grayregular = TextStyle(
      color:ColorsManger.gray,
      fontSize: 14.sp,
      fontWeight: FontWightHelper.regular
  );

   static TextStyle font14Light_grayregular = TextStyle(
      color:ColorsManger.Ligt_gray,
      fontSize: 14.sp,
      fontWeight: FontWightHelper.regular
  );
  static TextStyle font32Blue700Wight = TextStyle(
      color: ColorsManger.mainBlue, fontSize: 32.sp, fontWeight: FontWeight.bold);

  static TextStyle font10Gray = TextStyle(
    color: Colors.grey ,fontSize: 13.sp);

  static TextStyle font14DarkBlueMedium = TextStyle(
      color:ColorsManger.darkBlue,
      fontSize: 14.sp,
      fontWeight: FontWightHelper.medium
  );
 static TextStyle font13BlueReguler = TextStyle(
      color:ColorsManger.mainBlue,
      fontSize: 13.sp,
      fontWeight: FontWightHelper.regular
  );

  static TextStyle font14LightGrayRegular= TextStyle(
      color:ColorsManger.Ligt_gray,
      fontSize: 14.sp,
      fontWeight: FontWightHelper.regular
  );
}