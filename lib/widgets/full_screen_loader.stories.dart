import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'full_screen_loader.dart';

@widgetbook.UseCase(
  name: 'Loading On',
  type: FullScreenLoader,
)
Widget buildFullScreenLoaderOn(BuildContext context) {
  return const FullScreenLoader(
    isLoading: true,
    child: Center(
      child: Text('Content di balik loading'),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Loading Off',
  type: FullScreenLoader,
)
Widget buildFullScreenLoaderOff(BuildContext context) {
  return const FullScreenLoader(
    isLoading: false,
    child: Center(
      child: Text('Content terlihat normal'),
    ),
  );
}
