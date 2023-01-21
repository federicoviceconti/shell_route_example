part of 'main.dart';

const usernamePath = '/username';
const passwordPath = '/password';
const homePath = '/home';
const offersPath = '/offers';
const offerDetailPath = ':id';
const offerDetailInsertDataPath = 'insert_data';
const offerDetailDataRecapPath = 'recap_data';
const newsPath = '/news';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> shellLoginNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> shellDashboardNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> shellActivationFlowNavigatorKey =
    GlobalKey<NavigatorState>();

class GoRouterWrapper {
  static GoRouter? _router;

  static GoRouter _get(BuildContext context) {
    if (_router != null) return _router!;

    _router = GoRouter(
      debugLogDiagnostics: kDebugMode,
      navigatorKey: rootNavigatorKey,
      refreshListenable:
          GoRouterRefreshStream(context.watch<AppCubit>().stream),
      initialLocation: usernamePath,
      routes: [
        ShellRoute(
          navigatorKey: shellLoginNavigatorKey,
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
                return const InsertPasswordWidget();
              },
            ),
          ],
        ),
        ShellRoute(
          navigatorKey: shellDashboardNavigatorKey,
          builder: (context, state, child) {
            return FlowDashboardWidget(
              child: DashboardWidget(child: child),
            );
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
              redirect: (context, state) {
                final cubit = context.read<AppCubit>();
                if (!cubit.state.loggedIn) return usernamePath;

                return null;
              },
            ),
            GoRoute(
                path: offersPath,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return CustomTransitionPage(
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            child,
                    child: const OffersWidget(),
                  );
                },
                routes: [
                  GoRoute(
                    path: offerDetailPath,
                    builder: (BuildContext context, GoRouterState state) {
                      return OfferDetailWidget(id: state.params['id']!);
                    },
                    routes: [
                      ShellRoute(
                        navigatorKey: shellActivationFlowNavigatorKey,
                        builder: (context, state, child) {
                          return BlocProvider(
                            create: (context) => FlowActivateOfferCubit(
                              const FlowActivateOfferState(),
                            ),
                            child: FlowActivateOfferWidget(child: child),
                          );
                        },
                        routes: [
                          GoRoute(
                            path: offerDetailInsertDataPath,
                            builder:
                                (BuildContext context, GoRouterState state) {
                              return OfferDetailInsertDataWidget(
                                id: state.params['id'] ?? '-1',
                              );
                            },
                          ),
                          GoRoute(
                            path: offerDetailDataRecapPath,
                            builder:
                                (BuildContext context, GoRouterState state) {
                              return OfferDetailRecapWidget(
                                id: state.params['id'] ?? '-1',
                              );
                            },
                            redirect: (context, state) {
                              final ctx = shellActivationFlowNavigatorKey
                                  .currentContext;

                              if (ctx == null) return homePath;

                              final stateActivate =
                                  ctx.read<FlowActivateOfferCubit>().state;

                              if (stateActivate.email.isEmpty ||
                                  stateActivate.phoneNumber.isEmpty) {
                                return offersPath;
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
            GoRoute(
              path: newsPath,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return CustomTransitionPage(
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) => child,
                  child: const NewsWidget(),
                );
              },
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) {
        return const Scaffold(
          body: Text("Error!"),
        );
      },
    );

    return _router!;
  }
}
