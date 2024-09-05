import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_requst_body.g.dart';

@JsonSerializable()
class LoginRequstBody {
  final String email;
  final String password;

  LoginRequstBody(this.email, this.password);

  Map<String, dynamic> toJson() => _$LoginRequstBodyToJson(this);
}
