import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/application/register/register_bloc.dart';
import 'package:flutter_machine_test/domain/register/models/treatment_item.dart';
import 'package:flutter_machine_test/presentation/register/widgets/add_treatement_dialog.dart';
import 'package:gap/gap.dart';

class TreatmentWidget extends StatelessWidget {
  const TreatmentWidget({
    required this.index,
    required this.treatmentItem,
    super.key,
  });

  final int index;
  final TreatmentItem treatmentItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0XFFF1F1F1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '${index + 1}.',
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const Gap(5),
              Text(
                treatmentItem.treatment.name ?? 'Unknown',
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.read<RegisterBloc>().add(
                        DeleteTreatmentItem(index),
                      );
                },
                child: Image.asset(
                  AppAssets.close,
                  height: 20,
                ),
              )
            ],
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              Row(
                children: [
                  const Text(
                    'Male',
                    style: TextStyle(
                      color: Color(0xFF006837),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3))),
                    child: Center(
                      child: Text(
                        '${treatmentItem.males}',
                        style: const TextStyle(
                          color: Color(0xFF006837),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(40),
              Row(
                children: [
                  const Text(
                    'Femail',
                    style: TextStyle(
                      color: Color(0xFF006837),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '${treatmentItem.femails}',
                        style: const TextStyle(
                          color: Color(0xFF006837),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AddTreatmentDialogWidget(
                        treatmentItem: treatmentItem,
                      );
                    },
                  );
                },
                child: Image.asset(
                  AppAssets.edit,
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
