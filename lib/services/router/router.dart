import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants/category.dart';
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
    redirect: redirect,
  );
  ref.onDispose(router.dispose);

  return router;
}

@riverpod
String initialLocation(InitialLocationRef ref) => '/';

String? redirect(BuildContext context, GoRouterState state) {
  if (state.pathParameters.containsKey('category')) {
    try {
      PostCategory.values
          .firstWhere((e) => e.toString() == state.pathParameters['category']);
    } catch (e) {
      return '/';
    }
  }
  return null;
}
