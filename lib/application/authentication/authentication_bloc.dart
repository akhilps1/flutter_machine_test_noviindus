import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/application/core/serveice/custom_toast.dart';
import 'package:flutter_machine_test/domain/authentication/i_authentication.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
    this.iAuthenticationFacade,
  ) : super(AuthenticationState.initial()) {
    on<UserNameChaned>(_userNameChanged);
    on<PasswdChanged>(_passwordChanged);
    on<Authenticate>(
      _authenticate,
    );
    on<CheckAuthenticated>(_checkAuthenticate);
    on<ClearFailure>(_clearFailure);
  }

  final IAuthenticationFacade iAuthenticationFacade;

  void _userNameChanged(
    UserNameChaned event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      state.copyWith(
        userName: event.userName,
      ),
    );
  }

  void _passwordChanged(
    PasswdChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void _authenticate(
    Authenticate event,
    Emitter<AuthenticationState> emit,
  ) async {
    log(state.userName);
    log(state.password);

    if (state.userName.isEmpty && state.password.isEmpty) {
      CustomToast.errorToast(message: 'Fill all required fields');
      return;
    }
    final response = await iAuthenticationFacade.authentcate(
      userName: state.userName,
      password: state.password,
    );

    response.fold(
      (failure) {
        failure.maybeMap(
          orElse: () {},
          serverFailure: (value) {
            CustomToast.errorToast(message: value.errorMsg);
          },
          unknownFailure: (value) {
            CustomToast.errorToast(message: value.errorMsg);
          },
        );
      },
      (token) {
        emit(
          state.copyWith(token: token),
        );
      },
    );
    emit(
      state.copyWith(
        failureOrSuccess: some(response),
      ),
    );
  }

  void _checkAuthenticate(
    CheckAuthenticated event,
    Emitter<AuthenticationState> emit,
  ) {
    final response = iAuthenticationFacade.checkAuthenticated();

    response.fold(
      (failure) {},
      (token) {
        emit(
          state.copyWith(token: token),
        );
      },
    );
    emit(
      state.copyWith(
        failureOrSuccess: some(response),
      ),
    );
  }

  void _clearFailure(
    ClearFailure event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(
      state.copyWith(
        failureOrSuccess: none(),
      ),
    );
  }
}
