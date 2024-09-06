import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RegisterRequestBody(this.name, this.email, this.phone, this.gender,
      this.password, this.passwordConfirmation);

  // This method converts the RegisterRequestBody object to JSON.
  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
