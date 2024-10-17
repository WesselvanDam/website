enum PostCategory {
  featured,
  story,
  content,
  thought,
  portfolio,
  experience,
  education;

  @override
  String toString() => name;
}

extension PostCategoryExtension on PostCategory {
  String get displayName => name[0].toUpperCase() + name.substring(1);
}
