import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/core/serveice/custom_toast.dart';
import 'package:flutter_machine_test/application/register/register_bloc.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:flutter_machine_test/domain/register/models/treatment_item.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_button.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_drop_down.dart';
import 'package:flutter_machine_test/presentation/register/widgets/counter.dart';
import 'package:gap/gap.dart';

class AddTreatmentDialogWidget extends StatefulWidget {
  const AddTreatmentDialogWidget({
    this.treatmentItem,
    super.key,
  });
  final TreatmentItem? treatmentItem;

  @override
  State<AddTreatmentDialogWidget> createState() =>
      _AddTreatmentDialogWidgetState();
}

class _AddTreatmentDialogWidgetState extends State<AddTreatmentDialogWidget> {
  @override
  void initState() {
    if (widget.treatmentItem != null) {
      context.read<RegisterBloc>()
        ..add(TreatmentSelected(widget.treatmentItem!.treatment))
        ..add(SetFemaleCount(widget.treatmentItem!.femails))
        ..add(
          SetMaleCount(
            widget.treatmentItem!.males,
          ),
        );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropDown<Treatment>(
                      value: widget.treatmentItem != null
                          ? state.treatments.indexWhere(
                              (element) =>
                                  element.id == widget.treatmentItem!.id,
                            )
                          : null,
                      onTap: (treatment) {
                        context.read<RegisterBloc>().add(
                              TreatmentSelected(treatment),
                            );
                      },
                      fontSize: 16,
                      width: 220,
                      items: state.treatments,
                      title: 'Choose Treatment',
                      hint: 'Choose prefered treatment',
                    ),
                    const Text(
                      'Add Patients',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const Gap(5),
                    Column(
                      children: [
                        CounterWidget(
                          name: 'Male',
                          value: state.maleCount,
                          decrement: () => context
                              .read<RegisterBloc>()
                              .add(const DecrementMaleCount()),
                          increment: () => context
                              .read<RegisterBloc>()
                              .add(const IncrementMaleCount()),
                        ),
                        const Gap(15),
                        CounterWidget(
                          name: 'Female',
                          value: state.femaileCount,
                          decrement: () => context
                              .read<RegisterBloc>()
                              .add(const DecrementFemaleCount()),
                          increment: () => context
                              .read<RegisterBloc>()
                              .add(const IncrementFemaleCount()),
                        ),
                      ],
                    ),
                    const Gap(15),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: CustomButton(
                        onPress: () {
                          if (widget.treatmentItem == null) {
                            if (state.selectedTreatment == null) {
                              CustomToast.errorToast(
                                  message: 'Please Select treatment');
                              return;
                            }

                            if (state.maleCount > 0 || state.femaileCount > 0) {
                              context.read<RegisterBloc>().add(
                                    TreatmentItemAdded(
                                      TreatmentItem(
                                        id: state.treatmentItems.length,
                                        femails: state.femaileCount,
                                        males: state.maleCount,
                                        treatment: state.selectedTreatment!,
                                      ),
                                    ),
                                  );
                              Navigator.pop(context);
                            } else {
                              CustomToast.errorToast(
                                  message: 'Please add atleast one person');
                            }
                          } else {
                            context.read<RegisterBloc>().add(
                                  EditTreatmentItem(widget.treatmentItem!.id!),
                                );
                          }
                        },
                        color: const Color(0xFF006837),
                        widget: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
