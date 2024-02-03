part of 'patients_bloc.dart';

@freezed
class PatientsState with _$PatientsState {
  const factory PatientsState({
    required List<Patient> patients,
    required Option<MainFailure> failureOption,
    required bool isLoading,
  }) = _PatientsState;

  factory PatientsState.initial() => PatientsState(
        failureOption: none(),
        isLoading: true,
        patients: [],
      );
}
