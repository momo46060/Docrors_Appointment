import 'package:docrors/core/helpers/extenitions.dart';
import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
          minimumSize: WidgetStateProperty.all(
            Size(double.infinity, 50.h),
          ),
          shape:WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )
          ),
        ),
        child: Text(
          "Get Started",
          style: TextStyles.font16WihteSemiBold,
        ));
  }
}
