import 'package:docrors/core/helpers/spacing.dart';
import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorWithSpecialtySeeMore extends StatelessWidget {
  const DoctorWithSpecialtySeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font16WihteSemiBold
              .copyWith(fontSize: 18.sp, color: ColorsManger.darkBlue),
        ),
        const Spacer(),
        Text('See All',
          style:TextStyles.font13BlueReguler,),
      ],
    );
  }
}
