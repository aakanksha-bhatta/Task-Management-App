import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management_app/feature/auth/data/model/app_banner.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/custom_button_widget.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/text_widget.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 101.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 500.9.w,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: appBannerList.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final banner = appBannerList[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(banner.urlImg, fit: BoxFit.contain),
                        SizedBox(height: 10.h),
                        TextWidget(
                          text: banner.title,
                          fontSize: 32.h,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(height: 15.h),
                        TextWidget(
                          text: banner.body,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        TextWidget(
                          text: banner.bodySecond,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                        ),

                        SizedBox(height: 94.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(appBannerList.length, (
                            dotIndex,
                          ) {
                            bool isActive = dotIndex == _currentIndex;
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              height: 3.h,
                              width: 20.w,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            );
                          }),
                        ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(height: 30.h),
              CustomButtonWidget(buttonName: 'Login'),
              SizedBox(height: 31.h),
              CustomButtonWidget(buttonName: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
