import 'package:docrors/core/routing/app_router.dart';
import 'package:docrors/features/login/logic/cubit/login_cubit.dart';
import 'package:docrors/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_feild.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  late TextEditingController passwordController;
  late TextEditingController emailController;
   bool hasLowerCase = false;
   bool hasUpperCase = false;
   bool hasSpecial = false;
   bool hasNumber = false;
   bool hasMinumLenth = false;

  @override
  void initState() {
    super.initState();
    passwordController = context
        .read<LoginCubit>()
        .passwordController;
    setUpemailAndPasswordLisner();
  }

  void setUpemailAndPasswordLisner() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase=AppRegex.hasLowerCase(passwordController.text) ;
        hasUpperCase=AppRegex.hasUpperCase(passwordController.text) ;
        hasSpecial=AppRegex.hasSpecialCharacter(passwordController.text) ;
        hasNumber=AppRegex.hasNumber(passwordController.text) ;
        hasMinumLenth = AppRegex.hasMinLength(passwordController.text) ;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context
          .read<LoginCubit>()
          .formkey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Pleas enter a valid email';
              }
            },
            controller: context
                .read<LoginCubit>()
                .emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context
                .read<LoginCubit>()
                .passwordController,
            hintText: 'PassWord',
            isObscureText: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Pleas enter a valid password';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasMinumLenth: hasMinumLenth,
            hasNumber: hasNumber,
            hasSpecial: hasSpecial,
            hasUpperCase: hasUpperCase,
          )
        ],
      ),

    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

}
