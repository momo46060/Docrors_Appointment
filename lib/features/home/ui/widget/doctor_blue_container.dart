import 'package:docrors/core/helpers/spacing.dart';
import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:docrors/core/theming/font_wight_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContener extends StatelessWidget {
  const DoctorBlueContener({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/Background.png',
                    ),
                    fit: BoxFit.cover),
                color: ColorsManger.mainBlue,
                borderRadius: BorderRadius.circular(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Book and\n schedule with\n nearest doctor",
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWightHelper.regular,
                      color: Colors.white),
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: TextStyles.font13BlueReguler,
                    ))
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset('assets/images/girl.png',
            height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
