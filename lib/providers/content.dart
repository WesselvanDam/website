import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/category.dart';

part 'content.g.dart';

/// Loads the content of a post from a markdown file.
///
/// Usage:
/// ```dart
/// final postContent = ref.watch(contentProvider(category, slug));
/// ```
@riverpod
Future<String> content(
  ContentRef ref,
  PostCategory category,
  String slug,
) async {
  final contentPath =
      'https://raw.githubusercontent.com/WesselvanDam/website/refs/heads/main/posts/$category/$slug/index.md';

  final response = await http.get(Uri.parse(contentPath));

  if (response.statusCode == 200) {
    return response.body.split('---').last;
  } else {
    throw Exception('Failed to load post content');
  }
}
