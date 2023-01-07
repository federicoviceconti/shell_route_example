part of 'main.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellLoginNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellDashboardNavigatorKey =
    GlobalKey<NavigatorState>();

GoRouter _getRouter(BuildContext context) {
  final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(context.watch<AppCubit>().stream),
    initialLocation: '/username',
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: '/loader',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            opaque: false,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) => child,
            child: const LoaderWidget(),
          );
        },
      ),
      ShellRoute(
        navigatorKey: _shellLoginNavigatorKey,
        builder: (context, state, child) {
          return FlowLoginWidget(child: child);
        },
        routes: [
          GoRoute(
            path: '/username',
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
                return const OffersWidget();
              },
              routes: [
                GoRoute(
                  path: ':id',
                  builder: (BuildContext context, GoRouterState state) {
                    return OfferDetailWidget(id: state.params['id']!);
                  },
                )
              ]),
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

  return router;
}
