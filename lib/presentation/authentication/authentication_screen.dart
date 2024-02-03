import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_machine_test/application/authentication/authentication_bloc.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/application/core/serveice/show_progress_dilog.dart';
import 'package:flutter_machine_test/application/core/utils/extention.dart';
import 'package:flutter_machine_test/presentation/core/app_widget.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_button.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_text_field.dart';
import 'package:gap/gap.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () => null,
          (failureOrSuccess) {
            if (failureOrSuccess.isRight()) {
              Navigator.pop(context);
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => const AppWidget(),
                  ),
                  (route) => false);
            }

            if (failureOrSuccess.isLeft()) {
              Navigator.pop(context);
              context.read<AuthenticationBloc>().add(const ClearFailure());
            }
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AppAssets.loginImage,
                    fit: BoxFit.cover,
                    height: 280,
                  ),
                  Image.asset(
                    AppAssets.logo,
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: BottomSheet(
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          enableDrag: false,
          onClosing: () {},
          builder: (context) => Container(
            height: context.deviceSize.height - 300,
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                const Text(
                  'Login Or Register To Book\nYour Appointments',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                ),
                const Gap(20),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Gap(10),
                CustomTextFeild(
                  hintText: '',
                  validator: (p0) {
                    return null;
                  },
                  onChanged: (value) => context
                      .read<AuthenticationBloc>()
                      .add(UserNameChaned(value)),
                  borderColor: Colors.black12,
                  backgroundColor: Colors.black.withOpacity(0.05),
                  textColor: Colors.black,
                ),
                const Gap(25),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Gap(10),
                CustomTextFeild(
                  hintText: '',
                  validator: (p0) {
                    return null;
                  },
                  onChanged: (value) => context
                      .read<AuthenticationBloc>()
                      .add(PasswdChanged(value)),
                  borderColor: Colors.black12,
                  backgroundColor: Colors.black.withOpacity(0.05),
                  textColor: Colors.black,
                ),
                const Gap(50),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: CustomButton(
                    onPress: () {
                      showProgress(context);
                      context
                          .read<AuthenticationBloc>()
                          .add(const Authenticate());
                    },
                    color: const Color(0xFF006837),
                    widget: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              'By creating or logging into an account you are agreeing\nwith our ',
                          style: DefaultTextStyle.of(context).style.copyWith(
                                fontSize: 12,
                              ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Terms and Conditions',
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(fontSize: 12, color: Colors.blue),
                            ),
                            TextSpan(
                              text: ' and ',
                              style:
                                  DefaultTextStyle.of(context).style.copyWith(
                                        fontSize: 12,
                                      ),
                            ),
                            TextSpan(
                              text: ' Privacy Policy.',
                              style: DefaultTextStyle.of(context)
                                  .style
                                  .copyWith(fontSize: 12, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
