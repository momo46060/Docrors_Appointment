import 'package:docrors/core/helpers/extenitions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font10Gray,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueReguler,
            recognizer: TapGestureRecognizer()
              ..onTap = () {

                context.pushNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}