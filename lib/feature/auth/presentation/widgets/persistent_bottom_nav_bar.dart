import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PersistentBottomNavBarWidget extends StatefulWidget {
  const PersistentBottomNavBarWidget({super.key});

  @override
  State<PersistentBottomNavBarWidget> createState() =>
      _PersistentBottomNavBarWidgetState();
}

class _PersistentBottomNavBarWidgetState
    extends State<PersistentBottomNavBarWidget> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 2,
  ); // middle + button selected

  List<Widget> _buildScreens() {
    return const [
      HomePage(),
      SearchPage(),
      AddTaskPage(),
      ProfilePage(),
      SettingsPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        title: "Search",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      // leave middle item empty to create space for floating button
      PersistentBottomNavBarItem(
        icon: const SizedBox.shrink(),
        activeColorPrimary: Colors.transparent,
        inactiveColorPrimary: Colors.transparent,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline),
        title: "Profile",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings_outlined),
        title: "Settings",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // bottom nav bar
        PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineToSafeArea: true,
          backgroundColor: const Color(0xFFF7F7FB),
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(16.0.r),
            colorBehindNavBar: Colors.white,
          ),
          navBarStyle: NavBarStyle.style15,
        ),

        // floating center circular button
        Positioned(
          bottom: 30.h, // lift it up
          child: GestureDetector(
            onTap: () {
              setState(() {
                _controller.index = 2; // go to AddTaskPage
              });
            },
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  colors: [Color(0xFF00C6FF), Color(0xFF0072FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 38),
            ),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Text('Home Page'));
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Search Page'));
}

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Add Task Page'));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Profile Page'));
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) =>
      const Center(child: Text('Settings Page'));
}
