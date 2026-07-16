import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'design_tokens.g.dart';

class AppTheme {
  static const AppColorsExtension lightAppColorsExt = AppColorsExtension(
    primaryGradientStart: DesignTokens.lightPrimary,
    primaryGradientEnd: DesignTokens.lightPrimaryContainer,
    progressGradientStart: DesignTokens.lightSecondary,
    progressGradientEnd: DesignTokens.lightSecondaryContainer,
    ghostBorderFallback: Color(0x26C1C6D6),
    ambientShadowColor: Color(0x0F181C20),
  );

  static const AppColorsExtension darkAppColorsExt = AppColorsExtension(
    primaryGradientStart: DesignTokens.darkPrimary,
    primaryGradientEnd: DesignTokens.darkPrimaryContainer,
    progressGradientStart: DesignTokens.darkSecondary,
    progressGradientEnd: DesignTokens.darkSecondaryContainer,
    ghostBorderFallback: Color(0x26444748),
    ambientShadowColor: Color(0x66000000),
  );

  static TextTheme _buildTextTheme(TextTheme baseTheme, Color onSurface) {
    return baseTheme.copyWith(
      // Manrope for Displays and Headlines
      displayLarge: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeDisplayLarge,
        color: onSurface,
      ),
      displayMedium: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeDisplayMedium,
        color: onSurface,
      ),
      displaySmall: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeDisplaySmall,
        color: onSurface,
      ),
      headlineLarge: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeHeadlineLarge,
        color: onSurface,
      ),
      headlineMedium: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeHeadlineMedium,
        color: onSurface,
      ),
      headlineSmall: GoogleFonts.manrope(
        fontWeight: FontWeight.bold,
        fontSize: DesignTokens.fontSizeHeadlineSmall,
        color: onSurface,
      ),
      // Inter for Titles, Body, and Labels
      titleLarge: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: DesignTokens.fontSizeTitleLarge,
        color: onSurface,
      ),
      titleMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: DesignTokens.fontSizeTitleMedium,
        color: onSurface,
      ),
      titleSmall: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: DesignTokens.fontSizeTitleSmall,
        color: onSurface,
      ),
      bodyLarge: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeBodyLarge,
        color: onSurface,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeBodyMedium,
        color: onSurface,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeBodySmall,
        color: onSurface,
      ),
      labelLarge: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeLabelLarge,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeLabelMedium,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: DesignTokens.fontSizeLabelSmall,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        color: onSurface,
      ),
    );
  }

  static ThemeData get light {
    final baseTheme = ThemeData.light();

    return baseTheme.copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: DesignTokens.lightPrimary,
        onPrimary: DesignTokens.lightOnPrimary,
        primaryContainer: DesignTokens.lightPrimaryContainer,
        onPrimaryContainer: DesignTokens.lightOnPrimaryContainer,
        secondary: DesignTokens.lightSecondary,
        onSecondary: DesignTokens.lightOnSecondary,
        secondaryContainer: DesignTokens.lightSecondaryContainer,
        onSecondaryContainer: DesignTokens.lightOnSecondaryContainer,
        tertiary: DesignTokens.lightTertiary,
        onTertiary: DesignTokens.lightOnTertiary,
        onTertiaryContainer: DesignTokens.lightOnTertiaryContainer,
        error: DesignTokens.lightError,
        onError: DesignTokens.lightOnError,
        errorContainer: DesignTokens.lightErrorContainer,
        onErrorContainer: DesignTokens.lightOnErrorContainer,
        surface: DesignTokens.lightSurface,
        onSurface: DesignTokens.lightOnSurface,
        onSurfaceVariant: DesignTokens.lightOnSurfaceVariant,
        surfaceContainer: DesignTokens.lightSurfaceContainer,
        surfaceContainerHigh: DesignTokens.lightSurfaceContainerHigh,
        surfaceContainerHighest: DesignTokens.lightSurfaceContainerHighest,
        surfaceContainerLow: DesignTokens.lightSurfaceContainerLow,
        outline: DesignTokens.lightOutline,
        outlineVariant: DesignTokens.lightOutlineVariant,
      ),
      scaffoldBackgroundColor: DesignTokens.lightBackground,
      textTheme: _buildTextTheme(
        baseTheme.textTheme,
        DesignTokens.lightOnSurface,
      ),
      extensions: <ThemeExtension<dynamic>>[lightAppColorsExt],
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DesignTokens.radiusFull),
          ),
          backgroundColor: DesignTokens.lightPrimary,
          foregroundColor: DesignTokens.lightOnPrimary,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: DesignTokens.lightSurfaceContainerLowest,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DesignTokens.lightSurfaceContainerHigh,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(
            color: DesignTokens.lightPrimary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(
            color: DesignTokens.lightError,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(
            color: DesignTokens.lightError,
            width: 2,
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    final baseTheme = ThemeData.dark();

    return baseTheme.copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: DesignTokens.darkPrimary,
        onPrimary: DesignTokens.darkOnPrimary,
        primaryContainer: DesignTokens.darkPrimaryContainer,
        onPrimaryContainer: DesignTokens.darkOnPrimaryContainer,
        secondary: DesignTokens.darkSecondary,
        onSecondary: DesignTokens.darkOnSecondary,
        secondaryContainer: DesignTokens.darkSecondaryContainer,
        onSecondaryContainer: DesignTokens.darkOnSecondaryContainer,
        tertiary: DesignTokens.darkTertiary,
        onTertiary: DesignTokens.darkOnTertiary,
        onTertiaryContainer: DesignTokens.darkOnTertiaryContainer,
        error: DesignTokens.darkError,
        onError: DesignTokens.darkOnError,
        errorContainer: DesignTokens.darkErrorContainer,
        onErrorContainer: DesignTokens.darkOnErrorContainer,
        surface: DesignTokens.darkSurface,
        onSurface: DesignTokens.darkOnSurface,
        onSurfaceVariant: DesignTokens.darkOnSurfaceVariant,
        surfaceContainer: DesignTokens.darkSurfaceContainer,
        surfaceContainerHigh: DesignTokens.darkSurfaceContainerHigh,
        surfaceContainerHighest: DesignTokens.darkSurfaceContainerHighest,
        surfaceContainerLow: DesignTokens.darkSurfaceContainerLow,
        outline: DesignTokens.darkOutline,
        outlineVariant: DesignTokens.darkOutlineVariant,
      ),
      scaffoldBackgroundColor: DesignTokens.darkBackground,
      textTheme: _buildTextTheme(
        baseTheme.textTheme,
        DesignTokens.darkOnSurface,
      ),
      extensions: <ThemeExtension<dynamic>>[darkAppColorsExt],
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DesignTokens.radiusFull),
          ),
          backgroundColor: DesignTokens.darkPrimary,
          foregroundColor: DesignTokens.darkOnPrimary,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: DesignTokens.darkSurfaceContainerLowest,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DesignTokens.darkSurfaceContainerHigh,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(
            color: DesignTokens.darkPrimary,
            width: 2,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(color: DesignTokens.darkError, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DesignTokens.radiusMD),
          borderSide: const BorderSide(color: DesignTokens.darkError, width: 2),
        ),
      ),
    );
  }
}
