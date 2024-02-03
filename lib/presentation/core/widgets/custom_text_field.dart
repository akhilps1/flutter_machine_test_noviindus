// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    required this.hintText,
    required this.validator,
    required this.borderColor,
    required this.textColor,
    super.key,
    this.textController,
    this.onChanged,
    this.textInputType,
    this.obscure = false,
    this.maxLength,
    this.textInputAction,
    this.maxLines,
    this.enabled,
    this.textCapitalization,
    this.backgroundColor,
    this.inputFormater,
    this.suffixIcon,
  });

  final String hintText;
  final TextEditingController? textController;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final bool? obscure;
  final Color borderColor;
  final Color textColor;
  final int? maxLength;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final TextCapitalization? textCapitalization;
  final Color? backgroundColor;
  final List<TextInputFormatter>? inputFormater;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.5),
        ),
      ),
      child: TextFormField(
        controller: textController,
        maxLength: maxLength,
        maxLines: maxLines,
        textInputAction: textInputAction,
        obscureText: obscure ?? false,
        validator: validator,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        inputFormatters: inputFormater,
        keyboardType: textInputType,
        enabled: enabled,
        onChanged: onChanged,
        style: TextStyle(
          color: textColor,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          hintStyle: TextStyle(
            color: textColor,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: borderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
