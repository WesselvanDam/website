import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/category.dart';
import '../../providers/content.dart';
import '../../widgets/markdownViewer.dart';

class PostPage extends ConsumerWidget {
  const PostPage({required this.category, required this.slug, super.key});

  final PostCategory category;
  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postContent = ref.watch(contentProvider(category, slug));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: postContent.when(
        data: (data) =>
            MarkdownViewer(data: data, category: category, slug: slug),
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
