import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'primary_gradient_button.dart';

@widgetbook.UseCase(
  name: 'Default',
  type: PrimaryGradientButton,
)
Widget buildPrimaryGradientButtonDefault(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: PrimaryGradientButton(
      onPressed: () {},
      text: 'Lanjutkan',
    ),
  );
}

@widgetbook.UseCase(
  name: 'Loading',
  type: PrimaryGradientButton,
)
Widget buildPrimaryGradientButtonLoading(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: PrimaryGradientButton(
      onPressed: () {},
      text: 'Memproses...',
      isLoading: true,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: PrimaryGradientButton,
)
Widget buildPrimaryGradientButtonDisabled(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: PrimaryGradientButton(
      onPressed: null,
      text: 'Lanjutkan',
    ),
  );
}
