import 'package:docrors/core/theming/Styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecial;
  final bool hasNumber;
  final bool hasMinumLenth;

  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecial,
      required this.hasNumber,
      required this.hasMinumLenth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildvaliditionRow('At least 1 LowerCase Letter', hasLowerCase),
        verticalSpace(2),
       buildvaliditionRow('At least 1 UpperCase Letter', hasUpperCase),
        verticalSpace(2),
       buildvaliditionRow('At least 1 Special Character ', hasSpecial),
        verticalSpace(2),
       buildvaliditionRow('At least 1 Number ', hasNumber),
        verticalSpace(2),
       buildvaliditionRow('At least 8 Letter', hasMinumLenth),
        verticalSpace(2),
      ],
    );
  }

  Widget buildvaliditionRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManger.gray,
        ),
        horizantalSpace(8),
        Text(
          text,
          style: TextStyles.font14DarkBlueMedium.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color:hasValidated ? ColorsManger.gray : ColorsManger.darkBlue),
        )
      ],
    );
  }
}
