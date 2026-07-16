import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/design_tokens.g.dart';

class PrimaryGradientButton extends StatelessWidget {

  const PrimaryGradientButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
  });
  final VoidCallback? onPressed;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ext = theme.extension<AppColorsExtension>();

    final gradient = LinearGradient(
      colors: [
        ext?.primaryGradientStart ?? theme.colorScheme.primary,
        ext?.primaryGradientEnd ?? theme.colorScheme.primaryContainer,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: const GradientRotation(135 * 3.1415927 / 180),
    );

    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: onPressed == null ? null : gradient,
        color: onPressed == null
            ? theme.colorScheme.surfaceContainerHighest
            : null,
        borderRadius: BorderRadius.circular(
          DesignTokens.radiusFull,
        ), // pill-shaped
        boxShadow: onPressed == null
            ? []
            : [
                BoxShadow(
                  color: theme.shadowColor.withValues(
                    alpha: DesignTokens.ambientShadowOpacity,
                  ),
                  blurRadius: DesignTokens.ambientShadowBlur,
                  offset: DesignTokens.ambientShadowOffset,
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent, // Structural transparency is acceptable
        child: InkWell(
          borderRadius: BorderRadius.circular(DesignTokens.radiusFull),
          onTap: isLoading ? null : onPressed,
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: theme.colorScheme.onPrimary,
                      strokeWidth: 2,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: onPressed == null
                              ? theme.colorScheme.onSurfaceVariant
                              : theme.colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: onPressed == null
                            ? theme.colorScheme.onSurfaceVariant
                            : theme.colorScheme.onPrimary,
                        size: 20,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
