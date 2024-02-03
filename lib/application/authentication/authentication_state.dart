part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required String userName,
    required String password,
    required String token,
    required Option<Either<MainFailure, String>> failureOrSuccess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => AuthenticationState(
        password: '',
        userName: '',
        token: '',
        failureOrSuccess: none(),
      );
}
