import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'full_screen_loader.dart';

@widgetbook.UseCase(
  name: 'Loading On',
  type: FullScreenLoader,
)
Widget buildFullScreenLoaderOn(BuildContext context) {
  final theme = Theme.of(context);
  return Container(
    width: 375,
    height: 400,
    color: theme.colorScheme.surface,
    child: Stack(
      children: [
        const Center(child: Text('Content di balik loading')),
        Positioned.fill(
          child: Material(
            color: theme.colorScheme.scrim.withValues(alpha: 0.5),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Loading Off',
  type: FullScreenLoader,
)
Widget buildFullScreenLoaderOff(BuildContext context) {
  return const SizedBox(
    width: 375,
    height: 400,
    child: FullScreenLoader(
      isLoading: false,
      child: Center(
        child: Text('Content terlihat normal'),
      ),
    ),
  );
}
