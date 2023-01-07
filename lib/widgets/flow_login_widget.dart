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
      child: SafeArea(child: Scaffold(body: child)),
    );
  }
}

class InsertUsernameWidget extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  InsertUsernameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              onChanged: context.read<FlowLoginCubit>().onUsernameChanged,
              validator: (value) => value != null && value.isNotEmpty ? null : 'Error!',
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                if (_key.currentState!.validate()) context.push('/password');
              },
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}

class InsertPasswordWidget extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  InsertPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Form(
        key: _key,
        child: Column(
          children: [
            Text(context.read<FlowLoginCubit>().state.username ?? 'Empty!'),
            TextFormField(
              onChanged: context.read<FlowLoginCubit>().onPasswordChanged,
              validator: (value) => value != null && value.isNotEmpty ? null : 'Error!',
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                if (_key.currentState!.validate()) context.go('/home');
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
      ),
    );
  }
}
