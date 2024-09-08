import 'package:docrors/core/helpers/constents.dart';
import 'package:docrors/core/helpers/shared_pref_helper.dart';
import 'package:docrors/core/newtworking/dio_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docrors/features/login/data/models/login_requst_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void emitLoginState(LoginRequstBody body) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(body);
    response.when(
        success: (loginResponse) async{
          await saveToken(loginResponse.userDate.token);
          emit(LoginState.success(loginResponse));
        } ,
        faild: (message) => emit(
            LoginState.error(message: message ?? '')));
  }
}

Future<void> saveToken(String token)async{
  await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
   DioFactory.setTokenToHeaders();
}
