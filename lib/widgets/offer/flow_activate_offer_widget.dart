import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shell_go_router/main.dart';
import 'package:shell_go_router/mixin/loader_mixin.dart';

import '../../cubit.dart';
import '../flow_dashboard_widget.dart';

class FlowActivateOfferWidget extends StatelessWidget {
  final Widget child;

  const FlowActivateOfferWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
    );
  }
}

class OfferDetailInsertDataWidget extends StatelessWidget {
  final String id;

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  OfferDetailInsertDataWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              onChanged: context.read<FlowActivateOfferCubit>().onEmailChange,
              validator: (value) =>
                  value != null && value.isNotEmpty ? null : 'Error!',
            ),
            TextFormField(
              onChanged:
                  context.read<FlowActivateOfferCubit>().onPhoneNumberChange,
              validator: (value) =>
                  value != null && value.isNotEmpty ? null : 'Error!',
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  context.go('$offersPath/$id/$offerDetailDataRecapPath');
                }
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

class OfferDetailRecapWidget extends StatefulWidget {
  final String id;

  const OfferDetailRecapWidget({super.key, required this.id});

  @override
  State<OfferDetailRecapWidget> createState() => _OfferDetailRecapWidgetState();
}

class _OfferDetailRecapWidgetState extends State<OfferDetailRecapWidget>
    with LoaderMixin {
  @override
  Widget build(BuildContext context) {
    final state = context.read<FlowActivateOfferCubit>().state;
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text('offer with id: ${widget.id}'),
          const SizedBox(height: 16),
          Text(state.email),
          const SizedBox(height: 16),
          Text(state.phoneNumber),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              showGeneralDialog(
                context: context,
                pageBuilder: (innerContext, animation, secondaryAnimation) {
                  return ConfirmOfferPopupWidget(
                    firstAction: () async {
                      showLoader();
                      await Future.delayed(const Duration(seconds: 1));
                      hideLoader();

                      if (!mounted) return;
                      context.pop();

                      context
                        ..read<FlowDashboardCubit>().onTapItem(homeIndex)
                        ..go(homePath);
                    },
                    secondAction: () {
                      context
                        ..read<FlowDashboardCubit>().onTapItem(homeIndex)
                        ..go(homePath);
                    },
                  );
                },
              );
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

class ConfirmOfferPopupWidget extends StatelessWidget {
  final void Function() firstAction;
  final void Function() secondAction;

  const ConfirmOfferPopupWidget({
    super.key,
    required this.firstAction,
    required this.secondAction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Do you want to proceed?'),
          TextButton(
            onPressed: firstAction,
            child: const Text("Yes"),
          ),
          TextButton(
            onPressed: secondAction,
            child: const Text("Go home"),
          ),
        ],
      ),
    );
  }
}
