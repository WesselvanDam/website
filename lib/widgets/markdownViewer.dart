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
    debugPrint(
      Uri.parse(
        'https://raw.githubusercontent.com/WesselvanDam/website/refs/heads/main/posts/' +
            'https://raw.githubusercontent.com/WesselvanDam/website/5fec031978025fb9eea5fcbc632cd5de65b6d0a2/posts/portfolio/thank-you-token/mockup.jpg',
      ).toString(),
    );
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
      imageDirectory:
          'https://raw.githubusercontent.com/WesselvanDam/website/refs/heads/main/posts/$category/$slug/',
    );
  }
}
