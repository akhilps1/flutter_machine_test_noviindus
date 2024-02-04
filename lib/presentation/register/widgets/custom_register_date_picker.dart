
import 'package:flutter/material.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:flutter_machine_test/presentation/core/widgets/custom_text_field.dart';
import 'package:gap/gap.dart';

class CustomRegisterDatePicker extends StatelessWidget {
  const CustomRegisterDatePicker({
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
            suffixIcon: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ImageIcon(
                  size: 20,
                  AssetImage(
                    AppAssets.callender,
                  ),
                ),
                Gap(15),
              ],
            ),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
