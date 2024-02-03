import 'package:dio/dio.dart';
import 'package:flutter_machine_test/application/core/app_settings.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  // @preResolve annotation is used for eager initialization of the specified dependency.
  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();

  // @lazySingleton annotation is used for creating a singleton instance lazily.
  // @lazySingleton
  // Dio get dio => Dio(
  //     // BaseOptions(
  //     //   baseUrl: '${AppSettings.webServiceUrl}/api/',
  //     //   headers: {
  //     //     "Accept": "application/json",
  //     //   },
  //     // ),
  //     );
}
