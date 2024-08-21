import 'package:docrors/core/theming/Styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageWithText extends StatelessWidget {
  const DoctorImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/docdoc_logo_Low_opactiy.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: const [
                0.14,
                0.4
              ],
                  colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ])),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor Appointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32Blue700Wight.copyWith(
              height: 1.4
            ),
          ),
        )
      ],
    );
  }
}
