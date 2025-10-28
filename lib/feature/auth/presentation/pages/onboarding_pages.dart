import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/custom_button_widget.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/input_text_field_widget.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/persistent_bottom_nav_bar.dart';
import 'package:task_management_app/feature/auth/presentation/widgets/text_widget.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                text: 'Welcome to Task Manager',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 24),
              CustomButtonWidget(buttonName: 'Login'),
              SizedBox(height: 16),
              InputTextFormWidget(labelText: 'Enter your name'),
            ],
          ),
        ),
      ),
     bottomNavigationBar: const PersistentBottomNavBarWidget(),

    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(child: Text('Home Page'));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(child: Text('Search Page'));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(child: Text('Profile Page'));
}
