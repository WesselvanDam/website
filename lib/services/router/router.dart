import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  final initialLocation = ref.watch(initialLocationProvider);

  final router = GoRouter(
    navigatorKey: key,
    initialLocation: initialLocation,
    routes: $appRoutes,
  );
  ref.onDispose(router.dispose);

  return router;
}

@riverpod
String initialLocation(InitialLocationRef ref) => '/splash';
