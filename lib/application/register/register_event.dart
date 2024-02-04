part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.paymetOptionChanged(
    int value,
  ) = PaymetOptionChanged;
  const factory RegisterEvent.treatmentSelected(Treatment treatment) =
      TreatmentSelected;
  const factory RegisterEvent.incrementMaleCount() = IncrementMaleCount;
  const factory RegisterEvent.decrementMaleCount() = DecrementMaleCount;
  const factory RegisterEvent.incrementFemaleCount() = IncrementFemaleCount;
  const factory RegisterEvent.decrementFemaleCount() = DecrementFemaleCount;
  const factory RegisterEvent.getBranchList() = GetBranchList;
  const factory RegisterEvent.getTreatmentList() = GetTreatmentList;
  const factory RegisterEvent.treatmentItemAdded(TreatmentItem treatmentItem) =
      TreatmentItemAdded;
  const factory RegisterEvent.deletetreatmentItem(int index) =
      DeleteTreatmentItem;
  const factory RegisterEvent.edittreatmentItem(int index) = EditTreatmentItem;
  const factory RegisterEvent.branchSelected(Branch branch) = BranchSelected;
  const factory RegisterEvent.setMaleCount(int value) = SetMaleCount;
  const factory RegisterEvent.setFemaleCount(int value) = SetFemaleCount;

  const factory RegisterEvent.nameChanged(String name) = NameChanged;
  const factory RegisterEvent.whatsAppNoChanged(String number) =
      WhatsAppNoChanged;
  const factory RegisterEvent.totalAmountChanged(String number) =
      TotalAmountChanged;
  const factory RegisterEvent.discountAmountChanged(String number) =
      DiscountAmountChanged;
  const factory RegisterEvent.advancedAmountChanged(String number) =
      AdvancedAmountChanged;
  const factory RegisterEvent.balanceAmountChanged(String number) =
      BalanceAmountChanged;
  const factory RegisterEvent.treatmentHourChanged(String hour) =
      TreatmentHourChanged;
  const factory RegisterEvent.treatmentMinuteChanged(String minutes) =
      TreatmentTimeChanged;
}
