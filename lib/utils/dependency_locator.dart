import 'package:get_it/get_it.dart';
import 'networks/app_interceptor.dart';
import 'networks/end_point.dart';
import 'networks/network_service.dart';

GetIt getIt = GetIt.instance;
void initDependencyLocator() {
  getIt
    ..registerLazySingleton<AppInterceptor>(() => AppInterceptor(EndPoint.baseUrl))
    ..registerLazySingleton<NetworkService>(() => NetworkService());
}
