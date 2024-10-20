import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/category.dart';
import '../../pages/home/homePage.dart';
import '../../pages/post/postPage.dart';
import '../../pages/posts/postsPage.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<PostsRoute>(path: '/:category'),
    TypedGoRoute<PostRoute>(path: '/:category/:slug'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class PostsRoute extends GoRouteData {
  PostsRoute({required this.category});

  final PostCategory category;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PostsPage();
  }
}

class PostRoute extends GoRouteData {
  PostRoute({required this.category, required this.slug});

  final PostCategory category;
  final String slug;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PostPage(category: category, slug: slug);
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
