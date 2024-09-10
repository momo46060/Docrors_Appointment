import 'package:docrors/features/home/logic/cubit/home_cubit.dart';
import 'package:docrors/features/home/ui/widget/doctor-specialty_listView.dart';
import 'package:docrors/features/home/ui/widget/doctor_blue_container.dart';
import 'package:docrors/features/home/ui/widget/doctor_speciality_list_view.dart';
import 'package:docrors/features/home/ui/widget/doctor_with_specialty.dart';
import 'package:docrors/features/home/ui/widget/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContener(),
              verticalSpace(24.0),
              const DoctorWithSpecialtySeeMore(),
              verticalSpace(18.0),
              BlocBuilder<HomeCubit, HomeState>(
                  buildWhen: (previous, current) =>
                      current is SpecializaionLoading ||
                      current is SpecializaionSuccess ||
                      current is SpecializaionError,
                  builder: (context, state) {
                    return state.maybeWhen(specializaionloading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }, specializaionsuccess: (data) {
                      var specializionList = data.specializationDataList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorWithSpecialtyListView(
                              list: specializionList,
                            ),
                            verticalSpace(8.0),
                            BlocBuilder<HomeCubit, HomeState>(
                                buildWhen: (previous, current) =>
                                    current is DoctorSuccess ||
                                    current is DoctorError,
                                builder: (context, state) {
                                  return state.maybeWhen(doctorsuccess: (data) {
                                    return DoctorSpecialtyListView(
                                      doctorsList: data,
                                    );
                                  }, doctorerror: (error) {
                                    return Center(
                                      child: Text(error),
                                    );
                                  }, orElse: () {
                                    return const SizedBox.shrink();
                                  });
                                })
                          ],
                        ),
                      );
                    }, specializaionerror: (error) {
                      return Center(
                        child: Text(error),
                      );
                    }, orElse: () {
                      return const SizedBox.shrink();
                    });
                  }),

              /*     const DoctorWithSpecialtyListView(),
              verticalSpace(8.0),
              const DoctorSpecialtyListView(),*/
            ],
          ),
        ),
      ),
    );
  }
}
