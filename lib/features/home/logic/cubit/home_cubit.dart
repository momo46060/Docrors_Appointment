import 'package:bloc/bloc.dart';
import 'package:docrors/features/home/data/models/home_response_moodel.dart';
import 'package:docrors/features/home/data/repo/home_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo repo;

  HomeCubit(this.repo) : super(const HomeState.initial());

  void emitHomeState() async {
    emit(const HomeState.specializaionloading());
    var response = await repo.getSpecialization();
    response.when(success: (data) {
      emit(HomeState.specializaionsuccess(data));
    }, faild: (error) {
      emit(HomeState.specializaionerror(error));
    });
  }
}
