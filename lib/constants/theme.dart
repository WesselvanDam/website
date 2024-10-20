import 'package:flutter/material.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4a1c63)),
    textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'AtkinsonHyperlegible',
        ),
  );
}
