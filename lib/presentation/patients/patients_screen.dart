import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/application/core/utils/extention.dart';
import 'package:flutter_machine_test/application/patients/patients_bloc.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_button.dart';
import 'package:flutter_machine_test/presentation/register/register_screen.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class PatientsScreen extends StatefulWidget {
  const PatientsScreen({super.key});

  @override
  State<PatientsScreen> createState() => _PatientsScreenState();
}

class _PatientsScreenState extends State<PatientsScreen> {
  @override
  void initState() {
    if (context.read<PatientsBloc>().state.patients.isEmpty) {
      context.read<PatientsBloc>().add(const GetPatients());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<PatientsBloc, PatientsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<PatientsBloc>().add(const GetPatients());
            },
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 190,
                  surfaceTintColor: Colors.white,
                  backgroundColor: Colors.white,
                  leading: const Icon(Icons.arrow_back),
                  actions: [
                    Image.asset(
                      AppAssets.notification,
                      height: 25,
                    ),
                    const Gap(15),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                height: 45,
                                margin: const EdgeInsets.only(
                                    top: 15, left: 10, right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0.5,
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 9,
                                    ),
                                    const ImageIcon(
                                      AssetImage(AppAssets.search),
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Expanded(
                                      child: TextField(
                                        onSubmitted: (value) async {},
                                        decoration: InputDecoration(
                                          hintText: 'Search for treatments',
                                          hintStyle: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                          contentPadding: EdgeInsets.zero,
                                          border: const OutlineInputBorder(
                                            gapPadding: 0,
                                            borderSide: BorderSide.none,
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            gapPadding: 0,
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 45,
                              width: 80,
                              child: CustomButton(
                                onPress: () {},
                                color: const Color(0xFF006837),
                                widget: const Text(
                                  'Search',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10)
                          ],
                        ),
                        const Gap(70)
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size(context.deviceSize.width, 60),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Gap(10),
                            const Text(
                              'Sort by :',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.1),
                                  ),
                                ),
                                width: 140,
                                height: 40,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.expand_more,
                                      color: Color(0xFF006837),
                                    )
                                  ],
                                )),
                            const Gap(10)
                          ],
                        ),
                        const Divider()
                      ],
                    ),
                  ),
                ),
                if (state.patients.isNotEmpty)
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    sliver: SliverList.separated(
                      itemCount: state.patients.length,
                      itemBuilder: (context, index) {
                        final patient = state.patients[index];
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${index + 1}.',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Gap(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          patient.user ?? '',
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const Gap(5),
                                        Text(
                                          'Couple Combo Package (${patient.user ?? ''}...',
                                          style: const TextStyle(
                                            color: Color(0xFF006837),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const Gap(10),
                                        Row(
                                          children: [
                                            Image.asset(
                                              AppAssets.callender,
                                              height: 20,
                                            ),
                                            const Gap(5),
                                            Text(
                                              DateFormat('dd/MM/yyyy')
                                                  .format(patient.createdAt!),
                                              style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const Gap(20),
                                            Image.asset(
                                              AppAssets.person,
                                              height: 20,
                                            ),
                                            const Gap(5),
                                            Text(
                                              patient.name ?? '',
                                              style: TextStyle(
                                                color: Colors.black
                                                    .withOpacity(0.3),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Divider(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'View Booking Details',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF006837),
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                              const Gap(8),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Gap(10),
                    ),
                  )
                else
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: state.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : const Center(
                            child: Text(
                              'No Data Fount',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                  )
              ],
            ),
          );
        },
      ),
      bottomSheet: !context.watch<PatientsBloc>().state.isLoading
          ? Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: CustomButton(
                  onPress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  color: const Color(0xFF006837),
                  widget: const Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
