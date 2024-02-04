import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_machine_test/application/authentication/authentication_bloc.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:flutter_machine_test/domain/register/i_register_facade.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:flutter_machine_test/domain/register/models/treatment_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required this.authenticationBloc,
    required this.iRegisterFacade,
  }) : super(RegisterState.initial()) {
    authenticationSubscription = authenticationBloc.stream.listen(
      (authenticationState) {
        token = authenticationState.token;
        if (state.branches.isEmpty) {
          add(
            const GetBranchList(),
          );
        }
        if (state.treatments.isEmpty) {
          add(
            const GetTreatmentList(),
          );
        }
      },
    );
    on<PaymetOptionChanged>(_paymentOptionChanged);
    on<TreatmentSelected>(_treatmentSelected);
    on<GetBranchList>(
      _branchList,
      transformer: droppable(),
    );
    on<GetTreatmentList>(
      _getTreatmentList,
      transformer: droppable(),
    );
    on<IncrementFemaleCount>(_incrementFemaileCount);
    on<IncrementMaleCount>(_incrementMaileCount);
    on<DecrementFemaleCount>(_decrementFemaileCount);
    on<DecrementMaleCount>(_decrementMaileCount);
    on<TreatmentItemAdded>(_treatmentItemAdded);
    on<DeleteTreatmentItem>(_deleteTreatmentItem);
    on<EditTreatmentItem>(_editTreatmentItem);
    on<SetFemaleCount>(_setFemaleCount);
    on<SetMaleCount>(_setMaleCount);
  }

  final IRegisterFacade iRegisterFacade;
  final AuthenticationBloc authenticationBloc;

  late final StreamSubscription<AuthenticationState> authenticationSubscription;

  late String token;

  _setMaleCount(
    SetMaleCount event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        maleCount: event.value,
      ),
    );
  }

  _setFemaleCount(
    SetFemaleCount event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        femaileCount: event.value,
      ),
    );
  }

  _editTreatmentItem(
    EditTreatmentItem event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        treatmentItems: state.editTreatmentItem(
          event.index,
        ),
      ),
    );
  }

  _deleteTreatmentItem(
    DeleteTreatmentItem event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        treatmentItems: state.removeTreatmentItem(
          event.index,
        ),
      ),
    );
  }

  _treatmentItemAdded(
    TreatmentItemAdded event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(
        treatmentItems: [
          ...state.treatmentItems,
          event.treatmentItem,
        ],
        maleCount: 0,
        femaileCount: 0,
        selectedTreatment: null,
      ),
    );
  }

  _treatmentSelected(
    TreatmentSelected event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(selectedTreatment: event.treatment));
  }

  _incrementFemaileCount(
    IncrementFemaleCount event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(femaileCount: state.femaileCount + 1));
  }

  _incrementMaileCount(
    IncrementMaleCount event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(maleCount: state.maleCount + 1));
  }

  _decrementFemaileCount(
    DecrementFemaleCount event,
    Emitter<RegisterState> emit,
  ) {
    if (state.femaileCount > 0) {
      emit(state.copyWith(femaileCount: state.femaileCount - 1));
    }
  }

  _decrementMaileCount(
    DecrementMaleCount event,
    Emitter<RegisterState> emit,
  ) {
    if (state.maleCount > 0) {
      emit(state.copyWith(maleCount: state.maleCount - 1));
    }
  }

  void _paymentOptionChanged(
    PaymetOptionChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
      state.copyWith(paymetOption: event.value),
    );
  }

  void _branchList(
    GetBranchList event,
    Emitter<RegisterState> emit,
  ) async {
    final result = await iRegisterFacade.getBranchList(token);

    result.fold(
      (l) {},
      (branches) {
        log(branches.toString());
        emit(
          state.copyWith(branches: branches),
        );
      },
    );
  }

  void _getTreatmentList(
    GetTreatmentList event,
    Emitter<RegisterState> emit,
  ) async {
    final result = await iRegisterFacade.getTreatmentList(token);
    result.fold(
      (l) {},
      (treatments) {
        log(treatments.toString());
        emit(
          state.copyWith(treatments: treatments),
        );
      },
    );
  }
}
