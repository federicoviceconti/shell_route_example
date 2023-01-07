import 'dart:math';

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
            icon: Icon(Icons.school),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Offerte',
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

class CommonWidget extends StatefulWidget {
  const CommonWidget({
    super.key,
  });

  @override
  State<CommonWidget> createState() => _CommonWidgetState();
}

class _CommonWidgetState extends State<CommonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.read<FlowDashboardCubit>().state.label,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () async {
              context.showLoader();
              await Future.delayed(const Duration(seconds: 3));

              if (!mounted) return;
              context.hideLoader();
            },
            child: const Text('Load...'),
          ),
        ],
      ),
    );
  }
}

extension LoaderBuildContextExt on BuildContext {
  showLoader() => push('/loader');

  hideLoader() {
    if (canPop() && GoRouter.of(this).location == '/loader') {
      pop();
    }
  }
}

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.read<FlowDashboardCubit>().state.label,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () async {
              context.showLoader();
              await Future.delayed(const Duration(seconds: 3));

              if (!mounted) return;
              context.hideLoader();

              context.push('/offerte/${Random().nextInt(20)}');
            },
            child: const Text('Load offer...'),
          ),
        ],
      ),
    );
  }
}

class OfferDetailWidget extends StatelessWidget {
  final String id;

  const OfferDetailWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text('Offerta: $id'),
      ],
    );
  }
}
