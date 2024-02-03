import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_machine_test/application/authentication/authentication_bloc.dart';
import 'package:flutter_machine_test/application/core/serveice/custom_toast.dart';
import 'package:flutter_machine_test/domain/core/failures/failures.dart';
import 'package:flutter_machine_test/domain/patient/i_patients_facade.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patients_event.dart';
part 'patients_state.dart';
part 'patients_bloc.freezed.dart';

@injectable
class PatientsBloc extends Bloc<PatientsEvent, PatientsState> {
  PatientsBloc({
    required this.iPatientsFacade,
    required this.authenticationBloc,
  }) : super(PatientsState.initial()) {
    authenticationSubscription = authenticationBloc.stream.listen(
      (authenticationState) {
        token = authenticationState.token;
      },
    );

    on<GetPatients>(_getPatients);
  }

  final IPatientsFacade iPatientsFacade;
  final AuthenticationBloc authenticationBloc;

  late final StreamSubscription<AuthenticationState> authenticationSubscription;
  late String token;

  void _getPatients(
    GetPatients event,
    Emitter<PatientsState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final result = await iPatientsFacade.getPatients(token);
    result.fold(
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
        emit(
          state.copyWith(
            isLoading: false,
            failureOption: some(failure),
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            patients: r,
            isLoading: false,
          ),
        );
      },
    );
  }
}
