enum PostCategory { story, content, thought, portfolio, experience, education }

extension PostCategoryExtension on PostCategory {
  String get displayName => name[0].toUpperCase() + name.substring(1);
}
