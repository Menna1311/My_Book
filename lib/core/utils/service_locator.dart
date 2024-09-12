import 'package:books_remake/core/utils/api_service.dart';
import 'package:books_remake/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setUpserviceLocator() {
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getit.get<ApiService>(),
    ),
  );
  getit.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
}
