import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/category.dart';

class MarkdownViewer extends ConsumerWidget {
  const MarkdownViewer({
    required this.data,
    required this.category,
    required this.slug,
    super.key,
  });

  final String data;
  final PostCategory category;
  final String slug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Markdown(
      data: data,
      onTapLink: (text, href, title) {
        debugPrint('Link tapped: $text, $href, $title');
        if (href == null) {
          return;
        } else if (href.startsWith('http')) {
          launchUrl(Uri.parse(href));
        } else {
          context.go(href);
        }
      },
      imageBuilder: (uri, title, alt) {
        String imageUri;

        if (uri.scheme == 'http' || uri.scheme == 'https') {
          imageUri = uri.toString();
        } else {
          imageUri =
              'https://raw.githubusercontent.com/WesselvanDam/website/refs/heads/main/posts/$category/$slug/$uri';
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUri,
            frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) {
                return child;
              } else {
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              }
            },
          ),
        );
      },
    );
  }
}
