import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/auth_service.dart';
import '../models/user_model.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/sos_screen.dart';
import '../screens/tutorial_detail_screen.dart';
import '../screens/quiz_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/quiz_grid_screen.dart';

class AppRouter {
  static GoRouter createRouter(AuthService authService) {
    return GoRouter(
      initialLocation: '/',
      refreshListenable: authService,
      redirect: (context, state) {
        final bool loggedIn = authService.isAuthenticated;
        final bool isLoggingIn = state.matchedLocation == '/login';
        final bool isSplashScreen = state.matchedLocation == '/';

        if (isSplashScreen) return null;

        if (!loggedIn && !isLoggingIn) {
          return '/login';
        }

        if (loggedIn && isLoggingIn) {
          return '/dashboard';
        }

        return null;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: '/leaderboard',
          builder: (context, state) => const LeaderboardScreen(),
        ),
        GoRoute(
          path: '/sos',
          builder: (context, state) => const SOSScreen(),
        ),
        GoRoute(
          path: '/tutorial-detail',
          builder: (context, state) {
            if (state.extra == null) return const DashboardScreen();
            final tutorial = state.extra as TutorialContent;
            return TutorialDetailScreen(tutorial: tutorial);
          },
        ),
        GoRoute(
          path: '/quiz-grid',
          builder: (context, state) {
            // ✅ Matches the parameters in QuizGridScreen
            final disaster = state.uri.queryParameters['disaster'] ?? 'Fire';
            final category = state.uri.queryParameters['category'] ?? 'Basics';

            return QuizGridScreen(
              disasterType: disaster,
              categoryTitle: category,
            );
          },
        ),
        GoRoute(
          path: '/quiz',
          builder: (context, state) {
            final disaster = state.uri.queryParameters['disaster'] ?? 'Fire';
            final level = int.parse(state.uri.queryParameters['level'] ?? '1');

            return QuizScreen(
              disasterType: disaster,
              levelNumber: level,
            );
          },
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        appBar: AppBar(title: const Text('Navigation Error')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Page not found: ${state.uri}'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => context.go('/dashboard'),
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
