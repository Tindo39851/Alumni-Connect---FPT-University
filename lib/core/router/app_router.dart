import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:alumni_connect/features/shared/main_scaffold_wrapper.dart';
import 'package:alumni_connect/features/feed/presentation/screens/home_screen.dart';
import 'package:alumni_connect/features/feed/presentation/screens/post_detail_screen.dart';
import 'package:alumni_connect/features/feed/presentation/screens/create_post_screen.dart';
import 'package:alumni_connect/features/directory/presentation/screens/directory_screen.dart';
import 'package:alumni_connect/features/directory/presentation/screens/alumni_profile_screen.dart';
import 'package:alumni_connect/features/mentorship/presentation/screens/booking_screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScaffoldWrapper(navigationShell: navigationShell);
        },
        branches: [
          // Tab 1: Feed
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          // Tab 2: Mentors / Directory
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/directory',
                builder: (context, state) => const DirectoryScreen(),
              ),
            ],
          ),
          // Tab 3: Jobs
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/jobs',
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text('Cơ hội Việc làm & OJT (Tab 3)')),
                ),
              ),
            ],
          ),
          // Tab 4: AI Assistant
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/ai-assistant',
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text('Alumni AI Assistant (Tab 4)')),
                ),
              ),
            ],
          ),
          // Tab 5: Profile
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const Scaffold(
                  body: Center(child: Text('Hồ sơ Sinh viên (Tab 5)')),
                ),
              ),
            ],
          ),
        ],
      ),

      // Standalone Detail Routes
      GoRoute(
        path: '/post-detail/:id',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? 'post_thao';
          return PostDetailScreen(postId: id);
        },
      ),
      GoRoute(
        path: '/create-post',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const CreatePostScreen(),
      ),
      GoRoute(
        path: '/alumni-profile/:id',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? 'alumni_1';
          return AlumniProfileScreen(alumniId: id);
        },
      ),
      GoRoute(
        path: '/booking/:id',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? 'alumni_1';
          return BookingScreen(alumniId: id);
        },
      ),
    ],
  );
}
