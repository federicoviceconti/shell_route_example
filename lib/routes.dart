part of 'main.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellLoginNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellDashboardNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellLoginNavigatorKey,
      builder: (context, state, child) {
        return FlowLoginWidget(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const InsertUsernameWidget();
          },
        ),
        GoRoute(
          path: '/password',
          builder: (BuildContext context, GoRouterState state) {
            return const InsertPasswordWidget();
          },
        ),
      ],
    ),
    ShellRoute(
      navigatorKey: _shellDashboardNavigatorKey,
      builder: (context, state, child) {
        return FlowDashboardWidget(child: DashboardWidget(child: child));
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const CommonWidget();
          },
        ),
        GoRoute(
          path: '/offerte',
          builder: (BuildContext context, GoRouterState state) {
            return const CommonWidget();
          },
        ),
        GoRoute(
          path: '/news',
          builder: (BuildContext context, GoRouterState state) {
            return const CommonWidget();
          },
        ),
      ],
    ),
  ],
);
