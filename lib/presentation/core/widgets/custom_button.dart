// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPress,
    required this.color,
    required this.widget,
    this.padding,
  }) : super(key: key);

  final VoidCallback onPress;
  final Color color;
  final Widget widget;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(padding ?? EdgeInsets.zero),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(color)),
      onPressed: onPress,
      child: widget,
    );
  }
}
