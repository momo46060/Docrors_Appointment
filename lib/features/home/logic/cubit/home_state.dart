part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializaionloading() = SpecializaionLoading;
  const factory HomeState.specializaionsuccess(SpecializationsResponseModel data) = SpecializaionSuccess;
  const factory HomeState.specializaionerror(String error) = SpecializaionError;

  const factory HomeState.doctorsuccess(List<Doctors?>? data) = DoctorSuccess;
  const factory HomeState.doctorerror(String error) = DoctorError;
}
