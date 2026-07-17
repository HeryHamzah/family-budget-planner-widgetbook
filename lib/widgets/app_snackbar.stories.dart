import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'app_snackbar.dart';

@widgetbook.UseCase(
  name: 'Success',
  type: AppSnackBar,
)
Widget buildAppSnackBarSuccess(BuildContext context) {
  return Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: () => AppSnackBar.showSuccess(
          context,
          'Data berhasil disimpan',
        ),
        child: const Text('Show Success SnackBar'),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Info',
  type: AppSnackBar,
)
Widget buildAppSnackBarInfo(BuildContext context) {
  return Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: () => AppSnackBar.showInfo(
          context,
          'Sedang memproses...',
        ),
        child: const Text('Show Info SnackBar'),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Error',
  type: AppSnackBar,
)
Widget buildAppSnackBarError(BuildContext context) {
  return Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: () => AppSnackBar.showError(
          context,
          'Terjadi kesalahan',
        ),
        child: const Text('Show Error SnackBar'),
      ),
    ),
  );
}
