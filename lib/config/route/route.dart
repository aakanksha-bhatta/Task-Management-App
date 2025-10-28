import 'package:go_router/go_router.dart';
import 'package:task_management_app/config/route/path.dart';
import 'package:task_management_app/feature/auth/presentation/pages/onboarding_pages.dart';

final GoRouter router = GoRouter(
  initialLocation: Path.onboarding,
  routes: [
    GoRoute(
      path: Path.onboarding,
      builder: (context, state) => OnboardingPages(),
    ),
  ],
);
