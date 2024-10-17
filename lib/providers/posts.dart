import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/category.dart';
import '../models/post.dart';

part 'posts.g.dart';

@Riverpod(keepAlive: true)
class Posts extends _$Posts {
  @override
  FutureOr<Map<String, Post>> build({
    PostCategory category = PostCategory.featured,
  }) {
    return loadPosts();
  }

  Future<Map<String, Post>> loadPosts() async {
    final assetPath = 'index/$category.json';

    final jsonString = await rootBundle.loadString(assetPath);
    final jsonData = json.decode(jsonString) as List<dynamic>;
    final posts = <String, Post>{};
    for (final jsonPost in jsonData) {
      try {
        final post = Post.fromJson(jsonPost as Map<String, dynamic>);
        posts[post.slug] = post;
      } catch (e) {
        debugPrint('Error parsing post: $e');
      }
    }

    return posts;
  }
}
