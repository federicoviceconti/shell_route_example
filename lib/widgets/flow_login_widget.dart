import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit.dart';
import '../state.dart';

class FlowLoginWidget extends StatelessWidget {
  final Widget child;

  const FlowLoginWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FlowLoginCubit(const FlowLoginState()),
      child: Scaffold(body: child),
    );
  }
}

class InsertUsernameWidget extends StatelessWidget {
  const InsertUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          TextField(
            onChanged: context.read<FlowLoginCubit>().onUsernameChanged,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.push('/password');
            },
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}

class InsertPasswordWidget extends StatelessWidget {
  const InsertPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Text(context.read<FlowLoginCubit>().state.username ?? 'Empty!'),
          TextField(
            onChanged: context.read<FlowLoginCubit>().onPasswordChanged,
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context.go('/home');
            },
            child: const Text("Continue"),
          ),
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Back"),
          ),
        ],
      ),
    );
  }
}
