import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../constants/category.dart';
import '../../providers/posts.dart';
import '../../services/router/routes.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(postsProvider());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () => context
                .go(PostsRoute(category: PostCategory.featured).location),
          ),
        ],
      ),
      body: posts.when(
        data: (data) {
          return ListView(
            children: data.values
                .map(
                  (post) => ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.description),
                    onTap: () => context.go(
                      PostRoute(category: post.category, slug: post.slug)
                          .location,
                    ),
                  ),
                )
                .toList(),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) {
          debugPrint('Error: $error, $stackTrace');
          return Center(
            child: Text('Error: $error'),
          );
        },
      ),
    );
  }
}
