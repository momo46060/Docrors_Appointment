import 'package:bloc/bloc.dart';
import 'package:docrors/features/signup/data/models/register_request_body.dart';
import 'package:docrors/features/signup/data/repos/sign_up-repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _repo;

  SignUpCubit(this._repo) : super(const SignUpState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUp() async {
    RegisterRequestBody body = RegisterRequestBody(
        nameController.text,
        emailController.text,
        phoneController.text,
        0,
        passwordController.text,
        confirmPasswordController.text);
    emit(const SignUpState.loading());
    final respnse = await _repo.signUp(body);
    respnse.when(success: (data) {
      emit(SignUpState.succsess(data));
    }, faild: (error) {
      emit(SignUpState.error(error));
    });
  }
}
