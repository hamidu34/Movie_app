import 'package:flutter/material.dart';
import 'package:movie_streaming_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientSecondaryContainerToGray => BoxDecoration(
        color: appTheme.gray90001,
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 1),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToGray900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.29, 0.58),
          end: Alignment(0.29, 1),
          colors: [
            theme.colorScheme.secondaryContainer.withOpacity(0.4),
            appTheme.gray900.withOpacity(0.8),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlackDd => BoxDecoration(
        color: appTheme.gray90002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900Dd.withOpacity(0.2),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.4),
        border: Border.all(
          color: appTheme.indigo500,
          width: getHorizontalSize(1),
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        getHorizontalSize(16),
      );

  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        getHorizontalSize(2),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
