import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/font_wight_helper.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Mohamed!',
            style:TextStyles.font14DarkBlueMedium.copyWith(
              fontSize: 18,
              fontWeight: FontWightHelper.bold
            )),
           Text('How Are you Today?',
            style:TextStyles.font14grayregular)
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: ColorsManger.more_Ligter_gray,
          radius: 24,
          child:  SvgPicture.asset('assets/svgs/notify.svg'),
        )
      ],
    );
  }
}
