import 'package:dio/dio.dart';
import 'package:docrors/core/newtworking/api_service.dart';
import 'package:docrors/core/newtworking/dio_factory.dart';
import 'package:docrors/features/home/data/api/home_api_service.dart';
import 'package:docrors/features/home/data/repo/home_repo.dart';
import 'package:docrors/features/login/data/repos/login_repo.dart';
import 'package:docrors/features/login/logic/cubit/login_cubit.dart';
import 'package:docrors/features/signup/data/repos/sign_up-repo.dart';
import 'package:docrors/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/logic/cubit/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));





  getIt.registerLazySingleton<HomeApi>(() => HomeApi(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
