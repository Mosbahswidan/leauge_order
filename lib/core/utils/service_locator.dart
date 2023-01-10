import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:leauge_order/core/utils/api_services.dart';

import '../../feature/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()));
}
