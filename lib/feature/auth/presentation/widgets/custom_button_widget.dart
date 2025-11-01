import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_management_app/config/constants/AppColor.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonName;
  const CustomButtonWidget({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 378.w,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
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
