part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required int paymetOption,
    required int femaileCount,
    required int maleCount,
    required List<Branch> branches,
    required List<Treatment> treatments,
    required Treatment? selectedTreatment,
    required Branch? selectedBranch,
    required List<TreatmentItem> treatmentItems,
  }) = _RegisterState;
  factory RegisterState.initial() => const RegisterState(
        paymetOption: 0,
        femaileCount: 0,
        selectedTreatment: null,
        selectedBranch: null,
        maleCount: 0,
        branches: [],
        treatments: [],
        treatmentItems: [],
      );
}

extension RegisterStateExtention on RegisterState {
  List<TreatmentItem> removeTreatmentItem(int index) {
    return treatmentItems.where((element) => element.id != index).toList();
  }

  List<TreatmentItem> editTreatmentItem(int index) {
    List<TreatmentItem> editableItem = List.from(treatmentItems);
    editableItem
      ..removeAt(index)
      ..insert(
        index,
        treatmentItems[index].copyWith(
          femails: femaileCount,
          males: maleCount,
          treatment: selectedTreatment,
        ),
      );

    return editableItem;
  }
}
