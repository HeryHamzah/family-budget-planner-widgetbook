import 'package:flutter/material.dart';
import 'design_tokens.g.dart';

class AppColors {
  // ── Light Theme ─ exact tokens from Stitch Project ──
  static const Color lightPrimary = DesignTokens.lightPrimary;
  static const Color lightPrimaryContainer = DesignTokens.lightPrimaryContainer;
  static const Color lightSecondary = DesignTokens.lightSecondary;
  static const Color lightSecondaryContainer =
      DesignTokens.lightSecondaryContainer;
  static const Color lightTertiary = DesignTokens.lightTertiary;
  static const Color lightTertiaryContainer =
      DesignTokens.lightTertiaryContainer;
  static const Color lightBackground = DesignTokens.lightBackground;
  static const Color lightSurface = DesignTokens.lightSurface;
  static const Color lightSurfaceContainer = DesignTokens.lightSurfaceContainer;
  static const Color lightSurfaceContainerHigh =
      DesignTokens.lightSurfaceContainerHigh;
  static const Color lightSurfaceContainerHighest =
      DesignTokens.lightSurfaceContainerHighest;
  static const Color lightSurfaceContainerLow =
      DesignTokens.lightSurfaceContainerLow;
  static const Color lightSurfaceContainerLowest =
      DesignTokens.lightSurfaceContainerLowest;
  static const Color lightOnSurface = DesignTokens.lightOnSurface;
  static const Color lightOnSurfaceVariant = DesignTokens.lightOnSurfaceVariant;
  static const Color lightOutline = DesignTokens.lightOutline;
  static const Color lightOutlineVariant = DesignTokens.lightOutlineVariant;
  static const Color lightError = DesignTokens.lightError;
  static const Color lightErrorContainer = DesignTokens.lightErrorContainer;

  // ── Dark Theme ─ exact tokens from Stitch Project ──
  static const Color darkPrimary = DesignTokens.darkPrimary;
  static const Color darkPrimaryContainer = DesignTokens.darkPrimaryContainer;
  static const Color darkSecondary = DesignTokens.darkSecondary;
  static const Color darkSecondaryContainer =
      DesignTokens.darkSecondaryContainer;
  static const Color darkTertiary = DesignTokens.darkTertiary;
  static const Color darkTertiaryContainer = DesignTokens.darkTertiaryContainer;
  static const Color darkBackground = DesignTokens.darkBackground;
  static const Color darkSurface = DesignTokens.darkSurface;
  static const Color darkSurfaceContainer = DesignTokens.darkSurfaceContainer;
  static const Color darkSurfaceContainerHigh =
      DesignTokens.darkSurfaceContainerHigh;
  static const Color darkSurfaceContainerHighest =
      DesignTokens.darkSurfaceContainerHighest;
  static const Color darkSurfaceContainerLow =
      DesignTokens.darkSurfaceContainerLow;
  static const Color darkSurfaceContainerLowest =
      DesignTokens.darkSurfaceContainerLowest;
  static const Color darkOnSurface = DesignTokens.darkOnSurface;
  static const Color darkOnSurfaceVariant = DesignTokens.darkOnSurfaceVariant;
  static const Color darkOutline = DesignTokens.darkOutline;
  static const Color darkOutlineVariant = DesignTokens.darkOutlineVariant;
  static const Color darkError = DesignTokens.darkError;
  static const Color darkErrorContainer = DesignTokens.darkErrorContainer;
}

// Custom semantic colors that don't map neatly to ColorScheme
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {

  const AppColorsExtension({
    required this.primaryGradientStart,
    required this.primaryGradientEnd,
    required this.progressGradientStart,
    required this.progressGradientEnd,
    required this.ghostBorderFallback,
    required this.ambientShadowColor,
  });
  final Color primaryGradientStart;
  final Color primaryGradientEnd;
  final Color progressGradientStart;
  final Color progressGradientEnd;
  final Color ghostBorderFallback;
  final Color ambientShadowColor;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primaryGradientStart,
    Color? primaryGradientEnd,
    Color? progressGradientStart,
    Color? progressGradientEnd,
    Color? ghostBorderFallback,
    Color? ambientShadowColor,
  }) {
    return AppColorsExtension(
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      progressGradientStart:
          progressGradientStart ?? this.progressGradientStart,
      progressGradientEnd: progressGradientEnd ?? this.progressGradientEnd,
      ghostBorderFallback: ghostBorderFallback ?? this.ghostBorderFallback,
      ambientShadowColor: ambientShadowColor ?? this.ambientShadowColor,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      primaryGradientStart: Color.lerp(
        primaryGradientStart,
        other.primaryGradientStart,
        t,
      )!,
      primaryGradientEnd: Color.lerp(
        primaryGradientEnd,
        other.primaryGradientEnd,
        t,
      )!,
      progressGradientStart: Color.lerp(
        progressGradientStart,
        other.progressGradientStart,
        t,
      )!,
      progressGradientEnd: Color.lerp(
        progressGradientEnd,
        other.progressGradientEnd,
        t,
      )!,
      ghostBorderFallback: Color.lerp(
        ghostBorderFallback,
        other.ghostBorderFallback,
        t,
      )!,
      ambientShadowColor: Color.lerp(
        ambientShadowColor,
        other.ambientShadowColor,
        t,
      )!,
    );
  }
}
