import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'auth_text_field.dart';

@widgetbook.UseCase(
  name: 'Empty',
  type: AuthTextField,
)
Widget buildAuthTextFieldEmpty(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: AuthTextField(
      hintText: 'Masukkan email',
    ),
  );
}

@widgetbook.UseCase(
  name: 'With Text',
  type: AuthTextField,
)
Widget buildAuthTextFieldWithText(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: AuthTextField(
      hintText: 'Masukkan email',
      prefixIcon: Icons.email_outlined,
    ),
  );
}

@widgetbook.UseCase(
  name: 'With Error',
  type: AuthTextField,
)
Widget buildAuthTextFieldWithError(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: AuthTextField(
      hintText: 'Masukkan email',
      errorText: 'Email tidak valid',
      prefixIcon: Icons.email_outlined,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Password',
  type: AuthTextField,
)
Widget buildAuthTextFieldPassword(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: AuthTextField(
      hintText: 'Masukkan password',
      obscureText: true,
      prefixIcon: Icons.lock_outlined,
    ),
  );
}
