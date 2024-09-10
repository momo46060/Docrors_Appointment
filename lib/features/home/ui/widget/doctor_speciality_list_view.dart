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

class DoctorWithSpecialtyListView extends StatefulWidget {
  final List<SpecializationsData?>? list;

  const DoctorWithSpecialtyListView({super.key, required this.list});

  @override
  State<DoctorWithSpecialtyListView> createState() =>
      _DoctorWithSpecialtyListViewState();
}

class _DoctorWithSpecialtyListViewState
    extends State<DoctorWithSpecialtyListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.list!.length,
        itemBuilder: (context, index) {
          var item = widget.list![index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().emitFilterDoctorsList(index);
            },
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  Container(
                    decoration:selectedIndex == index? BoxDecoration(
                        shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorsManger.mainBlue,
                        width: 2.0
                      )
                    ) : null,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: ColorsManger.lightBlue,
                      child: SvgPicture.asset(
                        'assets/svgs/general_speciality.svg',
                        height: selectedIndex == index ? 42.h :40.h,
                        width: selectedIndex == index ? 42.h :40.h,
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    item!.name!,
                    style:selectedIndex == index ? TextStyles.font24blueBold.copyWith(
                      fontSize: 16.sp
                    ): TextStyles.font14DarkBlueMedium,
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
