import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeMontserrat => theme.textTheme.bodyLarge!.montserrat;
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyLargePoppinsOnPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePoppinsOnPrimaryLight =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePoppinsOnPrimaryLight_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeSecondaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumBluegray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsGray700 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumPoppinsGray70002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70002,
      );
  static get bodyMediumPoppinsGray70002Light =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsOnError =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 12.fSize,
      );
  static get bodySmallGray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray300,
        fontSize: 12.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 12.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsBluegray50001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray50001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPoppinsErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargeInterOnPrimary =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInter => theme.textTheme.headlineSmall!.inter;
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeOpenSans =>
      theme.textTheme.labelLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeMontserrat =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        fontSize: 23.fSize,
      );
  static get titleLargeMontserrat_1 => theme.textTheme.titleLarge!.montserrat;
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsOnPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserrat =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMontserratPrimaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOpenSansBluegray800 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleSmallMontserrat => theme.textTheme.titleSmall!.montserrat;
  static get titleSmallMontserratPrimaryContainer =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
