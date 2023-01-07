import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shell_go_router/stream.dart';

import 'state.dart';
import 'cubit.dart';
import 'widgets/flow_dashboard_widget.dart';
import 'widgets/flow_login_widget.dart';
import 'widgets/loader_widget.dart';

part 'routes.dart';

void main() {
  runApp(const ShellGoRouterApp());
}

class ShellGoRouterApp extends StatelessWidget {
  const ShellGoRouterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(const AppState()),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'ShellGoRouterApp Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routerConfig: _getRouter(context),
          );
        }
      ),
    );
  }
}
