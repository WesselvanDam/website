import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/category.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required String slug,
    required PostCategory category,
    required String title,
    required String description,
    required DateTime startDate,
    DateTime? endDate,
    DateTime? modifiedDate,
    String? image,
    String? location,
    List<String>? tags,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
