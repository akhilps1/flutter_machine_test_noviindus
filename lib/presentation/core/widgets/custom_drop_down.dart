import 'package:flutter/material.dart';
import 'package:flutter_machine_test/domain/register/models/treatment.dart';
import 'package:gap/gap.dart';

class CustomDropDown<T extends ObjectWithName> extends StatelessWidget {
  const CustomDropDown({
    required this.hint,
    required this.title,
    required this.items,
    required this.onTap,
    this.fontSize,
    this.width,
    this.value,
    super.key,
  });
  final String title;
  final String hint;

  final int? value;
  final double? width;
  final double? fontSize;
  final Function(T) onTap;

  final List<T> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: fontSize != null ? 0 : 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize ?? 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Gap(5),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 44,
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.05),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.1),
                  ),
                  borderRadius: BorderRadius.circular(6)),
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
                    ...items.map(
                      (item) => DropdownMenuItem<int>(
                        onTap: () {
                          onTap(item);
                        },
                        value: item.id,
                        child: SizedBox(
                          width: width ?? 280,
                          child: Text(
                            item.name ?? 'Unknown',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
