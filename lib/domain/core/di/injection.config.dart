// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../application/authentication/authentication_bloc.dart' as _i8;
import '../../../application/patients/patients_bloc.dart' as _i9;
import '../../../infrastrecture/authentication/i_authentication_impl.dart'
    as _i7;
import '../../../infrastrecture/patients/i_patient_impl.dart' as _i4;
import '../../authentication/i_authentication.dart' as _i6;
import '../../patient/i_patients_facade.dart' as _i3;
import 'app_injectable_module.dart' as _i10;

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
  gh.lazySingleton<_i3.IPatientsFacade>(() => _i4.IPatientsImpl());
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => appInjectableModule.preferences,
    preResolve: true,
  );
  gh.lazySingleton<_i6.IAuthenticationFacade>(
      () => _i7.IAuthenticationImpl(gh<_i5.SharedPreferences>()));
  gh.factory<_i8.AuthenticationBloc>(
      () => _i8.AuthenticationBloc(gh<_i6.IAuthenticationFacade>()));
  gh.factory<_i9.PatientsBloc>(() => _i9.PatientsBloc(
        iPatientsFacade: gh<_i3.IPatientsFacade>(),
        authenticationBloc: gh<_i8.AuthenticationBloc>(),
      ));
  return getIt;
}

class _$AppInjectableModule extends _i10.AppInjectableModule {}
