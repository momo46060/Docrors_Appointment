import 'package:docrors/core/helpers/spacing.dart';
import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/core/theming/font_wight_helper.dart';
import 'package:docrors/features/home/data/models/home_response_moodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DoctorSpecialtyListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorSpecialtyListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList!.length,
        itemBuilder: (context, index) {
          var doctor = doctorsList![index];
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2024/03/29/03/30/ai-generated-8662131_640.png',
                    width: 110.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizantalSpace(16),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( doctor!.name ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font14DarkBlueMedium.copyWith(
                      fontSize: 18.sp
                    ),),
                    verticalSpace(5),
                    Text(
                      '${doctor.degree} | ${doctor.phone}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.font10Gray.copyWith(
                        fontWeight: FontWightHelper.medium,
                        fontSize: 12.sp
                      ),
                    ),
                    verticalSpace(5),
                    Text(
                      doctor.email ?? "",
                      style: TextStyles.font10Gray.copyWith(
                          fontWeight: FontWightHelper.medium,
                          fontSize: 12.sp
                      ),
                    ),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
