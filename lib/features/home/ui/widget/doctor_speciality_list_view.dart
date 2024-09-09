import 'package:docrors/core/helpers/spacing.dart';
import 'package:docrors/core/routing/app_router.dart';
import 'package:docrors/core/theming/colors.dart';
import 'package:docrors/core/theming/styles.dart';
import 'package:docrors/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/home_response_moodel.dart';

class DoctorWithSpecialtyListView extends StatelessWidget {
  final List<SpecializationsData?>? list;
  const DoctorWithSpecialtyListView({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list!.length,
        itemBuilder: (context, index) {
          var item = list![index];
          return GestureDetector(
            onTap: (){
              context.read<HomeCubit>().emitFilterDoctorsList(index);
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorsManger.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 40.h,
                      width: 40.w,
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    item!.name!,
                    style: TextStyles.font14DarkBlueMedium,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
