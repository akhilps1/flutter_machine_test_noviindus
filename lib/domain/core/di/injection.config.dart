// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../../application/authentication/authentication_bloc.dart' as _i6;
import '../../../infrastrecture/authentication/i_authentication_impl.dart'
    as _i5;
import '../../authentication/i_authentication.dart' as _i4;
import 'app_injectable_module.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appInjectableModule = _$AppInjectableModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => appInjectableModule.preferences,
    preResolve: true,
  );
  gh.lazySingleton<_i4.IAuthenticationFacade>(
      () => _i5.IAuthenticationImpl(gh<_i3.SharedPreferences>()));
  gh.factory<_i6.AuthenticationBloc>(
      () => _i6.AuthenticationBloc(gh<_i4.IAuthenticationFacade>()));
  return getIt;
}

class _$AppInjectableModule extends _i7.AppInjectableModule {}
