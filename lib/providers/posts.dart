import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/post.dart';

part 'posts.g.dart';

@Riverpod(keepAlive: true)
class Posts extends _$Posts {
  @override
  FutureOr<Map<String, Post>> build() {
    return {};
  }
}
