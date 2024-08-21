import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: MaterialStateProperty.all(ColorsManger.mainBlue),
          minimumSize: MaterialStateProperty.all(
            Size(double.infinity, 50.h),
          ),
          shape:MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )
          ),
        ),
        child: Text(
          "Get Statred",
          style: TextStyles.font16WihteSemiBold,
        ));
  }
}
