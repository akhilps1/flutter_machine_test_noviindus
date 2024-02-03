import 'package:flutter/material.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/application/core/utils/extention.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_button.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_text_field.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 80,
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
              helper: '',
              hint: '',
            ),
          ),
          SliverToBoxAdapter(
            child: CustomRegisterTextField(
              onChanged: (value) {},
              helper: '',
              hint: '',
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRegisterTextField extends StatelessWidget {
  const CustomRegisterTextField({
    required this.onChanged,
    required this.helper,
    required this.hint,
    super.key,
  });
  final void Function(String)? onChanged;
  final String helper;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              helper,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          const Gap(5),
          CustomTextFeild(
            hintText: hint,
            validator: (_) {
              return null;
            },
            onChanged: onChanged,
            borderColor: Colors.black12,
            backgroundColor: Colors.black.withOpacity(0.05),
            textColor: Colors.black,
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
