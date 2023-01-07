import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit.dart';
import '../state.dart';

class FlowDashboardWidget extends StatelessWidget {
  final Widget child;

  const FlowDashboardWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FlowDashboardCubit(const FlowDashboardState()),
      child: child,
    );
  }
}

class DashboardWidget extends StatefulWidget {
  final Widget child;

  const DashboardWidget({super.key, required this.child});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/'),
        child: const Icon(Icons.login),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Offerte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'News',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          if (value == _index) return;

          setState(() {
            _index = value;
          });

          switch (value) {
            case 0:
              context
                ..read<FlowDashboardCubit>().onTapItem('home')
                ..go('/home');
              break;
            case 1:
              context
                ..read<FlowDashboardCubit>().onTapItem('news')
                ..go('/news');
              break;
            case 2:
              context
                ..read<FlowDashboardCubit>().onTapItem('offerte')
                ..go('/offerte');
              break;
            default:
          }
        },
      ),
    );
  }
}

class CommonWidget extends StatelessWidget {
  const CommonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.read<FlowDashboardCubit>().state.label),
    );
  }
}
