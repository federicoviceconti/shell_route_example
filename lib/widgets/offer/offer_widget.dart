import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../cubit.dart';
import '../../main.dart';
import '../../mixin/loader_mixin.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  final int _offerId = Random().nextInt(20);

  @override
  void initState() {
    debugPrint('--> Offers initState');
    super.initState();
  }

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
              context.showLoader();
              await Future.delayed(const Duration(seconds: 3));

              if (!mounted) return;
              context.hideLoader();

              context.go('$offersPath/$_offerId');
            },
            child: const Text('Load offer...'),
          ),
          TextButton(
            onPressed: () async {
              context.showLoader();
              context.showLoader();
              await Future.delayed(const Duration(seconds: 3));

              if (!mounted) return;
              context.hideLoader();
            },
            child: const Text('Load multiple...'),
          ),
          TextButton(
            onPressed: () async {
              context.go('$offersPath/$_offerId/$offerDetailInsertDataPath');
            },
            child: const Text('Activate offer...'),
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Text('Offer id: $id'),
          ],
        ),
      ),
    );
  }
}