import 'dart:ui';

import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  static TextStyle font32Blue700Wight = TextStyle(
      color: ColorsManger.mainBlue, fontSize: 32.sp, fontWeight: FontWeight.bold);

  static TextStyle font10Gray = TextStyle(
    color: Colors.grey ,fontSize: 13.sp);
}