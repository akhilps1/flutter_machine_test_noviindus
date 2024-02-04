import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomRegisterTimePicker extends StatelessWidget {
  const CustomRegisterTimePicker({
    required this.helper,
    super.key,
  });
  final String helper;

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
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hour',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: Color(0xFF006837),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Minutes',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: Color(0xFF006837),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
