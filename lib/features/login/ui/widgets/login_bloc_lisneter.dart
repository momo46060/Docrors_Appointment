import 'package:docrors/core/helpers/extenitions.dart';
import 'package:docrors/core/routing/routes.dart';
import 'package:docrors/core/theming/Styles.dart';
import 'package:docrors/features/login/logic/cubit/login_cubit.dart';
import 'package:docrors/features/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';

class LoginBlocLisner extends StatelessWidget {
  const LoginBlocLisner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(loading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManger.mainBlue,
                      ),
                    ));
          }, success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          }, error: (message) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 32,
                ),
                content: Text(
                  message,
                  style: TextStyles.font14DarkBlueMedium,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text('Got It',
                      style: TextStyles.font13BlueReguler,)),
                ],
              ),
            );
          });
        },
        child: const SizedBox.shrink());
  }
}
