import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  const CustomTextFormfield({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.helperText,
    this.autovalidateMode,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        helperText: helperText,
        // helperMaxLines: 3,
        hintTextDirection: helperText != null ? TextDirection.rtl : null,
        helperStyle: const TextStyle(fontSize: 12),
      ),
      focusNode: focusNode,
      onTapOutside: (event) => focusNode?.unfocus(),
      obscureText: obscureText!,
      controller: controller,
      autovalidateMode: autovalidateMode,
      validator: validator,
      textInputAction: TextInputAction.next,
    );
  }
}
