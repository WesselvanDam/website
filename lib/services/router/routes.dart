import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../constants/category.dart';
import '../../providers/posts.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<PostRoute>(path: '/:category/:slug'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}

class PostRoute extends GoRouteData {
  PostRoute({required this.category, required this.slug});

  final String category;
  final String slug;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    // Check if the category is valid
    if (!PostCategory.values.any((e) => e.name == category)) {
      return '/404';
    }
    // Check if the slug is valid
    final posts = await ProviderScope.containerOf(context).read(postsProvider.future);
    if (!posts.containsKey(slug)) {
      return '/404';
    }
    return null;
  }
}

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}
