import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/application/core/utils/extention.dart';
import 'package:flutter_machine_test/application/register/register_bloc.dart';
import 'package:flutter_machine_test/domain/patient/model/patient.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_button.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_drop_down.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_text_field.dart';
import 'package:flutter_machine_test/presentation/register/widgets/add_treatement_dialog.dart';
import 'package:flutter_machine_test/presentation/register/widgets/counter.dart';
import 'package:flutter_machine_test/presentation/register/widgets/custom_register_text_field.dart';
import 'package:flutter_machine_test/presentation/register/widgets/custom_register_time_picker.dart';
import 'package:flutter_machine_test/presentation/register/widgets/treatment.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 80,
                surfaceTintColor: Colors.white,
                backgroundColor: Colors.white,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                actions: [
                  Image.asset(
                    AppAssets.notification,
                    height: 25,
                  ),
                  const Gap(15),
                ],
                bottom: PreferredSize(
                  preferredSize: Size(context.deviceSize.width, 50),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Gap(25),
                          Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Gap(15),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Name',
                  hint: 'Enter your full name',
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Whatsapp Number',
                  hint: 'Enter your Whatsapp number',
                ),
              ),
              // SliverToBoxAdapter(
              //   child: CustomDropDown<Treatment>(
              //     items: state.treatments,
              //     title: 'Location',
              //     hint: 'Choose your location',
              //   ),
              // ),
              SliverToBoxAdapter(
                child: CustomDropDown<Branch>(
                  onTap: (branch) {},
                  items: state.branches,
                  title: 'Branch',
                  hint: 'Select the branch',
                ),
              ),
              const SliverToBoxAdapter(
                child: Row(
                  children: [
                    Gap(15),
                    Text(
                      'Treatments',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                sliver: SliverList.separated(
                  itemCount: state.treatmentItems.length,
                  itemBuilder: (context, index) {
                    return TreatmentWidget(
                      index: index,
                      treatmentItem: state.treatmentItems[index],
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(10),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomButton(
                      onPress: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const AddTreatmentDialogWidget();
                          },
                        );
                      },
                      color: const Color(0xFF389A48).withOpacity(0.3),
                      widget: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          Text(
                            'Add Treatments',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Total Amount',
                  hint: '',
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Discount Amount',
                  hint: '',
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: state.paymetOption,
                          onChanged: (value) {
                            context.read<RegisterBloc>().add(
                                  PaymetOptionChanged(value!),
                                );
                          },
                        ),
                        const Text(
                          'Cash',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: state.paymetOption,
                          onChanged: (value) {
                            context.read<RegisterBloc>().add(
                                  PaymetOptionChanged(value!),
                                );
                          },
                        ),
                        const Text(
                          'Card',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 3,
                          groupValue: state.paymetOption,
                          onChanged: (value) {
                            context.read<RegisterBloc>().add(
                                  PaymetOptionChanged(value!),
                                );
                          },
                        ),
                        const Text(
                          'Upi',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const Gap(15),
                      ],
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Gap(10),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Advance Amount',
                  hint: '',
                ),
              ),
              SliverToBoxAdapter(
                child: CustomRegisterTextField(
                  onChanged: (value) {},
                  helper: 'Balance Amount',
                  hint: '',
                ),
              ),

              const SliverToBoxAdapter(
                child: CustomRegisterTimePicker(helper: 'Treatment Time'),
              )
            ],
          );
        },
      ),
    );
  }
}
