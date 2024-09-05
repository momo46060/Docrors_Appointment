import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docrors/features/login/data/models/login_requst_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequstBody body) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(body);
    response.when(
        success: (data) => emit(LoginState.success(data)), faild:(message) =>
      emit(LoginState.error(message: message.apiErrorModel.message ?? '')));
  }
}
