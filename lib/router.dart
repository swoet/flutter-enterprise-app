import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'ui/home_screen.dart';
import 'ui/settings_screen.dart';
import 'ui/widgets/adaptive_scaffold.dart';

final _shellKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        final index = navigationShell.currentIndex;
        return AdaptiveScaffold(
          currentIndex: index,
          onTap: (i) => navigationShell.goBranch(i),
          body: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellKey,
          routes: [
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: HomeScreen()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: SettingsScreen()),
            ),
          ],
        ),
      ],
    ),
  ],
);
