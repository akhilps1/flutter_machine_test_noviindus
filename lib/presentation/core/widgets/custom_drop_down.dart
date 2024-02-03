import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    required this.hint,
    required this.title,
    this.value,
    super.key,
  });
  final String title;
  final String hint;

  final int? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(10),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Gap(10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 44,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: const [
              BoxShadow(
                color: Color(0x3FC1ABF1),
                blurRadius: 4,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField<int>(
                value: value,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                items: [
                  DropdownMenuItem<int>(
                    onTap: () {},
                    value: 0,
                    child: const Text('test'),
                  ),
                  DropdownMenuItem<int>(
                    onTap: () {},
                    value: 1,
                    child: const Text('test'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
