import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/loader_widget.dart';

mixin LoaderMixin<T extends StatefulWidget> on State<T> {
  Route? loader;

  showLoader() {
    if(loader == null || !loader!.isCurrent) {
      loader = TransparentPageRoute(
          builder: (context) {
            return const LoaderWidget();
          },
        );
      Navigator.of(context, rootNavigator: true).push(loader!);
    }
  }

  hideLoader() {
    if (loader != null && Navigator.of(context, rootNavigator: true).canPop()) {
      context.pop();
      loader = null;
    }
  }
}

class TransparentPageRoute extends PageRoute<void> {
  final WidgetBuilder builder;

  TransparentPageRoute({
    required this.builder,
    super.settings,
  }) : super(fullscreenDialog: false);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final child = builder(context);
    return FadeTransition(
      opacity: Tween<double>(begin: 0, end: 1).animate(animation),
      child: Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: child,
      ),
    );
  }

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 350);
}