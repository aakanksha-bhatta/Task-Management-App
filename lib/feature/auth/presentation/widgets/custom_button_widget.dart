import 'package:flutter/material.dart';
import 'package:task_management_app/config/constants/AppColor.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonName;
  const CustomButtonWidget({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 378,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.primary,
      ),
      child: Center(
        child: TextWidget(
          text: buttonName,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
