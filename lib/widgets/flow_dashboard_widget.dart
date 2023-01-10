import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
import '../cubit.dart';
import '../mixin/loader_mixin.dart';
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

const homeIndex = 0;
const newsIndex = 1;
const offersIndex = 2;

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FlowDashboardCubit>();
    return WillPopScope(
      onWillPop: () async {
        final router = GoRouter.of(context);
        final index = context.read<FlowDashboardCubit>().state.index;

        if (index != homeIndex && !router.canPop()) {
          context
            ..read<FlowDashboardCubit>().onTapItem(homeIndex)
            ..go(homePath);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.go(usernamePath),
          child: const Icon(Icons.login),
        ),
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cubit.state.index,
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
              label: 'Offers',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: (value) {
            //final index = context.read<FlowDashboardCubit>().state.index;
            //if (value == index) return;

            switch (value) {
              case homeIndex:
                context
                  ..read<FlowDashboardCubit>().onTapItem(homeIndex)
                  ..go(homePath);
                break;
              case newsIndex:
                context
                  ..read<FlowDashboardCubit>().onTapItem(newsIndex)
                  ..go(newsPath);
                break;
              case offersIndex:
                context
                  ..read<FlowDashboardCubit>().onTapItem(offersIndex)
                  ..go(offersPath);
                break;
              default:
            }
          },
        ),
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

class _CommonWidgetState extends State<CommonWidget> with LoaderMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.read<FlowDashboardCubit>().state.index.toString(),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () async {
              showLoader();
              await Future.delayed(const Duration(seconds: 3));

              if (!mounted) return;
              hideLoader();
              hideLoader();
              hideLoader();
            },
            child: const Text('Load...'),
          ),
        ],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            context.read<FlowDashboardCubit>().state.index.toString(),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () async {
              showGeneralDialog(
                context: context,
                pageBuilder: (innerContext, animation, secondaryAnimation) {
                  return PopupWidget(
                    firstAction: () {
                      context
                        ..read<FlowDashboardCubit>().onTapItem(homeIndex)
                        ..go(homePath);
                    },
                    secondAction: () {
                      context
                        ..read<FlowDashboardCubit>().onTapItem(offersIndex)
                        ..go('$offersPath/${Random().nextInt(20)}');
                    },
                  );
                },
              );
            },
            child: const Text('Load news...'),
          ),
        ],
      ),
    );
  }
}

class PopupWidget extends StatefulWidget {
  final void Function() firstAction;
  final void Function() secondAction;

  const PopupWidget({
    super.key,
    required this.firstAction,
    required this.secondAction,
  });

  @override
  State<PopupWidget> createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Wow!'),
            TextButton(
              onPressed: () {
                context.pop();

                widget.firstAction();
              },
              child: const Text("Go to home!"),
            ),
            TextButton(
              onPressed: () {
                context.pop();

                widget.secondAction();
              },
              child: const Text("Go to offer detail!"),
            ),
          ],
        ),
      ),
    );
  }
}
