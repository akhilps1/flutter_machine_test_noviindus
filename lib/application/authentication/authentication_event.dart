part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authenticate() = Authenticate;

  const factory AuthenticationEvent.userNameChaned(String userName) =
      UserNameChaned;
  const factory AuthenticationEvent.passwdChanged(String password) =
      PasswdChanged;
  const factory AuthenticationEvent.checkAuthenticated() = CheckAuthenticated;
  const factory AuthenticationEvent.clearFailure() = ClearFailure;
}
