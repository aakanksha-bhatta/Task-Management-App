import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/text_widget.dart';

class InputTextFormWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;

  const InputTextFormWidget({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.labelText,
    this.suffixIcon,
    this.inputFormatters,
    this.onChanged,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          TextWidget(
            text: labelText!,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: const Color(0xff7C7C7C),
            letterSpacing: 0.5,
          ),
          const SizedBox(height: 8),
        ] else ...[
          const SizedBox(height: 2),
        ],
        TextFormField(
          inputFormatters: inputFormatters,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFFF0F0F0),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFE2E2E2), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF252525),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
