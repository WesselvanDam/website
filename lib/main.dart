import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'services/router/router.dart';

void main() {
  usePathUrlStrategy();
  runApp(const ProviderScope(child: WebsiteApp()));
}

class WebsiteApp extends ConsumerWidget {
  const WebsiteApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
