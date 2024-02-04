import 'package:flutter/material.dart';
import 'package:flutter_machine_test/application/core/app_assets/app_assets.dart';
import 'package:gap/gap.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    required this.name,
    required this.value,
     required this.increment,
    required this.decrement,
    super.key,
  });
  final String name;
  final int value;
  final VoidCallback increment;
  final VoidCallback decrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          height: 40,
          width: 100,
          child: Row(
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: decrement,
          child: Image.asset(
            AppAssets.subtract,
            height: 40,
          ),
        ),
        const Gap(5),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          height: 40,
          child: Row(
            children: [
              Text(
                '$value',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Gap(8),
        InkWell(
          onTap: increment,
          child: Image.asset(
            AppAssets.add,
            height: 40,
          ),
        ),
      ],
    );
  }
}
