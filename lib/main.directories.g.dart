// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _widgetbook;
import 'package:widgetbook_workspace/widgets/app_snackbar.stories.dart'
    as _widgetbook_workspace_widgets_app_snackbar_stories;
import 'package:widgetbook_workspace/widgets/auth_text_field.stories.dart'
    as _widgetbook_workspace_widgets_auth_text_field_stories;
import 'package:widgetbook_workspace/widgets/full_screen_loader.stories.dart'
    as _widgetbook_workspace_widgets_full_screen_loader_stories;
import 'package:widgetbook_workspace/widgets/primary_gradient_button.stories.dart'
    as _widgetbook_workspace_widgets_primary_gradient_button_stories;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'AppSnackBar',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Error',
            builder: _widgetbook_workspace_widgets_app_snackbar_stories
                .buildAppSnackBarError,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Info',
            builder: _widgetbook_workspace_widgets_app_snackbar_stories
                .buildAppSnackBarInfo,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Success',
            builder: _widgetbook_workspace_widgets_app_snackbar_stories
                .buildAppSnackBarSuccess,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'AuthTextField',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Empty',
            builder: _widgetbook_workspace_widgets_auth_text_field_stories
                .buildAuthTextFieldEmpty,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Password',
            builder: _widgetbook_workspace_widgets_auth_text_field_stories
                .buildAuthTextFieldPassword,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'With Error',
            builder: _widgetbook_workspace_widgets_auth_text_field_stories
                .buildAuthTextFieldWithError,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'With Text',
            builder: _widgetbook_workspace_widgets_auth_text_field_stories
                .buildAuthTextFieldWithText,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'FullScreenLoader',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Loading Off',
            builder: _widgetbook_workspace_widgets_full_screen_loader_stories
                .buildFullScreenLoaderOff,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Loading On',
            builder: _widgetbook_workspace_widgets_full_screen_loader_stories
                .buildFullScreenLoaderOn,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'PrimaryGradientButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder:
                _widgetbook_workspace_widgets_primary_gradient_button_stories
                    .buildPrimaryGradientButtonDefault,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Disabled',
            builder:
                _widgetbook_workspace_widgets_primary_gradient_button_stories
                    .buildPrimaryGradientButtonDisabled,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Loading',
            builder:
                _widgetbook_workspace_widgets_primary_gradient_button_stories
                    .buildPrimaryGradientButtonLoading,
          ),
        ],
      ),
    ],
  ),
];
