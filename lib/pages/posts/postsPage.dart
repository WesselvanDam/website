import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../constants/category.dart';
import '../../providers/posts.dart';
import '../../services/router/router.dart';
import '../../services/router/routes.dart';

final categoryProvider = StateProvider.autoDispose<PostCategory>(
  (ref) =>
      ref
          .read(routerProvider)
          .routerDelegate
          .currentConfiguration
          .pathParameters['category']
          ?.toCategoryEnum() ??
      PostCategory.featured,
);

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  void switchCategory(
    BuildContext context,
    WidgetRef ref,
    PostCategory category,
  ) {
    ref.read(categoryProvider.notifier).state = category;
    context.go(PostsRoute(category: category).location);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(categoryProvider);
    final posts = ref.watch(postsProvider(category: category));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Column(
        children: [
          DropdownButton<PostCategory>(
            value: category,
            onChanged: (value) =>
                switchCategory(context, ref, value ?? PostCategory.featured),
            items: PostCategory.values
                .map(
                  (category) => DropdownMenuItem(
                    value: category,
                    child: Text(category.toString()),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: posts.when(
              data: (data) => ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final post = data.values.elementAt(index);
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.description),
                    onTap: () => context.go(
                      PostRoute(
                        category: post.category,
                        slug: post.slug,
                      ).location,
                    ),
                  );
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) {
                debugPrint('Error: $error, $stackTrace');
                return Center(
                  child: Text('Error: $error'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
