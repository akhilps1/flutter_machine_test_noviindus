// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../../application/authentication/authentication_bloc.dart' as _i10;
import '../../../application/patients/patients_bloc.dart' as _i11;
import '../../../infrastrecture/authentication/i_authentication_impl.dart'
    as _i9;
import '../../../infrastrecture/patients/i_patient_impl.dart' as _i4;
import '../../../infrastrecture/register/i_register_impl.dart' as _i6;
import '../../authentication/i_authentication.dart' as _i8;
import '../../patient/i_patients_facade.dart' as _i3;
import '../../register/i_register_facade.dart' as _i5;
import 'app_injectable_module.dart' as _i12;

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
  gh.lazySingleton<_i5.IRegisterFacade>(() => _i6.IRegisterImpl());
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => appInjectableModule.preferences,
    preResolve: true,
  );
  gh.lazySingleton<_i8.IAuthenticationFacade>(
      () => _i9.IAuthenticationImpl(gh<_i7.SharedPreferences>()));
  gh.factory<_i10.AuthenticationBloc>(
      () => _i10.AuthenticationBloc(gh<_i8.IAuthenticationFacade>()));
  gh.factory<_i11.PatientsBloc>(() => _i11.PatientsBloc(
        iPatientsFacade: gh<_i3.IPatientsFacade>(),
        authenticationBloc: gh<_i10.AuthenticationBloc>(),
      ));
  return getIt;
}

class _$AppInjectableModule extends _i12.AppInjectableModule {}
