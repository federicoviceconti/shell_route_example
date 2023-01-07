import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/flow_dashboard_widget.dart';
import 'widgets/flow_login_widget.dart';

part 'routes.dart';

void main() {
  runApp(const ShellGoRouterApp());
}

class ShellGoRouterApp extends StatelessWidget {
  const ShellGoRouterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ShellGoRouterApp Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}
