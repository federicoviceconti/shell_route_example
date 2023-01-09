part of 'main.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellLoginNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellDashboardNavigatorKey =
    GlobalKey<NavigatorState>();

const usernamePath = '/username';
const loaderPath = '/loader';
const passwordPath = '/password';
const homePath = '/home';
const offersPath = '/offers';
const offerDetailPath = ':id';
const newsPath = '/news';

GoRouter _getRouter(BuildContext context) {
  final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(context.watch<AppCubit>().stream),
    initialLocation: usernamePath,
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: loaderPath,
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
            path: usernamePath,
            builder: (BuildContext context, GoRouterState state) {
              return InsertUsernameWidget();
            },
          ),
          GoRoute(
            path: passwordPath,
            builder: (BuildContext context, GoRouterState state) {
              return InsertPasswordWidget();
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
            path: homePath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) => child,
                child: const CommonWidget(),
              );
            },
          ),
          GoRoute(
              path: offersPath,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) => child,
                  child: const OffersWidget(),
                );
              },
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: offerDetailPath,
                  builder: (BuildContext context, GoRouterState state) {
                    return OfferDetailWidget(id: state.params['id']!);
                  },
                )
              ]),
          GoRoute(
            path: newsPath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) => child,
                child: const CommonWidget(),
              );
            },
          ),
        ],
      ),
    ],
  );

  return router;
}
