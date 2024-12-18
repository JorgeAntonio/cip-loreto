// import 'package:flutter/material.dart';
// // import 'package:flutter_app_ui/flutter_app_ui.dart';

// class MaterialTheme {
//   const MaterialTheme(this.textTheme);
//   final TextTheme textTheme;

//   static MaterialScheme lightScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(0xff2d6a45),
//       surfaceTint: Color(0xff2d6a45),
//       onPrimary: Color(0xffffffff),
//       primaryContainer: Color(0xffb0f1c2),
//       onPrimaryContainer: Color(0xff00210f),
//       secondary: Color(0xff2c6a45),
//       onSecondary: Color(0xffffffff),
//       secondaryContainer: Color(0xffb0f1c3),
//       onSecondaryContainer: Color(0xff00210f),
//       tertiary: Color(0xff3b6470),
//       onTertiary: Color(0xffffffff),
//       tertiaryContainer: Color(0xffbeeaf7),
//       onTertiaryContainer: Color(0xff001f26),
//       error: Color(0xffba1a1a),
//       onError: Color(0xffffffff),
//       errorContainer: Color(0xffffdad6),
//       onErrorContainer: Color(0xff410002),
//       background: Color(0xfff6fbf3),
//       onBackground: Color(0xff181d19),
//       surface: Color(0xfff6fbf3),
//       onSurface: Color(0xff181d18),
//       surfaceVariant: Color(0xffdce5db),
//       onSurfaceVariant: Color(0xff414942),
//       outline: Color(0xff717971),
//       outlineVariant: Color(0xffc0c9bf),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xff2d322d),
//       inverseOnSurface: Color(0xffedf2ea),
//       inversePrimary: Color(0xff95d5a7),
//       primaryFixed: Color(0xffb0f1c2),
//       onPrimaryFixed: Color(0xff00210f),
//       primaryFixedDim: Color(0xff95d5a7),
//       onPrimaryFixedVariant: Color(0xff0f512f),
//       secondaryFixed: Color(0xffb0f1c3),
//       onSecondaryFixed: Color(0xff00210f),
//       secondaryFixedDim: Color(0xff95d5a8),
//       onSecondaryFixedVariant: Color(0xff0f512f),
//       tertiaryFixed: Color(0xffbeeaf7),
//       onTertiaryFixed: Color(0xff001f26),
//       tertiaryFixedDim: Color(0xffa3cdda),
//       onTertiaryFixedVariant: Color(0xff214c57),
//       surfaceDim: Color(0xffd7dbd4),
//       surfaceBright: Color(0xfff6fbf3),
//       surfaceContainerLowest: Color(0xffffffff),
//       surfaceContainerLow: Color(0xfff0f5ed),
//       surfaceContainer: Color(0xffebefe8),
//       surfaceContainerHigh: Color(0xffe5eae2),
//       surfaceContainerHighest: Color(0xffdfe4dc),
//     );
//   }

//   ThemeData light() {
//     return theme(lightScheme().toColorScheme());
//   }

//   static MaterialScheme lightMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(0xff094d2b),
//       surfaceTint: Color(0xff2d6a45),
//       onPrimary: Color(0xffffffff),
//       primaryContainer: Color(0xff44815a),
//       onPrimaryContainer: Color(0xffffffff),
//       secondary: Color(0xff084d2b),
//       onSecondary: Color(0xffffffff),
//       secondaryContainer: Color(0xff44815a),
//       onSecondaryContainer: Color(0xffffffff),
//       tertiary: Color(0xff1c4853),
//       onTertiary: Color(0xffffffff),
//       tertiaryContainer: Color(0xff517b86),
//       onTertiaryContainer: Color(0xffffffff),
//       error: Color(0xff8c0009),
//       onError: Color(0xffffffff),
//       errorContainer: Color(0xffda342e),
//       onErrorContainer: Color(0xffffffff),
//       background: Color(0xfff6fbf3),
//       onBackground: Color(0xff181d19),
//       surface: Color(0xfff6fbf3),
//       onSurface: Color(0xff181d18),
//       surfaceVariant: Color(0xffdce5db),
//       onSurfaceVariant: Color(0xff3d453e),
//       outline: Color(0xff59615a),
//       outlineVariant: Color(0xff757d75),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xff2d322d),
//       inverseOnSurface: Color(0xffedf2ea),
//       inversePrimary: Color(0xff95d5a7),
//       primaryFixed: Color(0xff44815a),
//       onPrimaryFixed: Color(0xffffffff),
//       primaryFixedDim: Color(0xff2a6743),
//       onPrimaryFixedVariant: Color(0xffffffff),
//       secondaryFixed: Color(0xff44815a),
//       onSecondaryFixed: Color(0xffffffff),
//       secondaryFixedDim: Color(0xff2a6743),
//       onSecondaryFixedVariant: Color(0xffffffff),
//       tertiaryFixed: Color(0xff517b86),
//       onTertiaryFixed: Color(0xffffffff),
//       tertiaryFixedDim: Color(0xff38626d),
//       onTertiaryFixedVariant: Color(0xffffffff),
//       surfaceDim: Color(0xffd7dbd4),
//       surfaceBright: Color(0xfff6fbf3),
//       surfaceContainerLowest: Color(0xffffffff),
//       surfaceContainerLow: Color(0xfff0f5ed),
//       surfaceContainer: Color(0xffebefe8),
//       surfaceContainerHigh: Color(0xffe5eae2),
//       surfaceContainerHighest: Color(0xffdfe4dc),
//     );
//   }

//   ThemeData lightMediumContrast() {
//     return theme(lightMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme lightHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.light,
//       primary: Color(0xff002913),
//       surfaceTint: Color(0xff2d6a45),
//       onPrimary: Color(0xffffffff),
//       primaryContainer: Color(0xff094d2b),
//       onPrimaryContainer: Color(0xffffffff),
//       secondary: Color(0xff002914),
//       onSecondary: Color(0xffffffff),
//       secondaryContainer: Color(0xff084d2b),
//       onSecondaryContainer: Color(0xffffffff),
//       tertiary: Color(0xff00262e),
//       onTertiary: Color(0xffffffff),
//       tertiaryContainer: Color(0xff1c4853),
//       onTertiaryContainer: Color(0xffffffff),
//       error: Color(0xff4e0002),
//       onError: Color(0xffffffff),
//       errorContainer: Color(0xff8c0009),
//       onErrorContainer: Color(0xffffffff),
//       background: Color(0xfff6fbf3),
//       onBackground: Color(0xff181d19),
//       surface: Color(0xfff6fbf3),
//       onSurface: Color(0xff000000),
//       surfaceVariant: Color(0xffdce5db),
//       onSurfaceVariant: Color(0xff1e2620),
//       outline: Color(0xff3d453e),
//       outlineVariant: Color(0xff3d453e),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xff2d322d),
//       inverseOnSurface: Color(0xffffffff),
//       inversePrimary: Color(0xffbafbcb),
//       primaryFixed: Color(0xff094d2b),
//       onPrimaryFixed: Color(0xffffffff),
//       primaryFixedDim: Color(0xff00351b),
//       onPrimaryFixedVariant: Color(0xffffffff),
//       secondaryFixed: Color(0xff084d2b),
//       onSecondaryFixed: Color(0xffffffff),
//       secondaryFixedDim: Color(0xff00351b),
//       onSecondaryFixedVariant: Color(0xffffffff),
//       tertiaryFixed: Color(0xff1c4853),
//       onTertiaryFixed: Color(0xffffffff),
//       tertiaryFixedDim: Color(0xff00323c),
//       onTertiaryFixedVariant: Color(0xffffffff),
//       surfaceDim: Color(0xffd7dbd4),
//       surfaceBright: Color(0xfff6fbf3),
//       surfaceContainerLowest: Color(0xffffffff),
//       surfaceContainerLow: Color(0xfff0f5ed),
//       surfaceContainer: Color(0xffebefe8),
//       surfaceContainerHigh: Color(0xffe5eae2),
//       surfaceContainerHighest: Color(0xffdfe4dc),
//     );
//   }

//   ThemeData lightHighContrast() {
//     return theme(lightHighContrastScheme().toColorScheme());
//   }

//   static MaterialScheme darkScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(0xff95d5a7),
//       surfaceTint: Color(0xff95d5a7),
//       onPrimary: Color(0xff00391d),
//       primaryContainer: Color(0xff0f512f),
//       onPrimaryContainer: Color(0xffb0f1c2),
//       secondary: Color(0xff95d5a8),
//       onSecondary: Color(0xff00391e),
//       secondaryContainer: Color(0xff0f512f),
//       onSecondaryContainer: Color(0xffb0f1c3),
//       tertiary: Color(0xffa3cdda),
//       onTertiary: Color(0xff023640),
//       tertiaryContainer: Color(0xff214c57),
//       onTertiaryContainer: Color(0xffbeeaf7),
//       error: Color(0xffffb4ab),
//       onError: Color(0xff690005),
//       errorContainer: Color(0xff93000a),
//       onErrorContainer: Color(0xffffdad6),
//       background: Color(0xff0f1511),
//       onBackground: Color(0xffdfe4dd),
//       surface: Color(0xff101510),
//       onSurface: Color(0xffdfe4dc),
//       surfaceVariant: Color(0xff414942),
//       onSurfaceVariant: Color(0xffc0c9bf),
//       outline: Color(0xff8b938a),
//       outlineVariant: Color(0xff414942),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xffdfe4dc),
//       inverseOnSurface: Color(0xff2d322d),
//       inversePrimary: Color(0xff2d6a45),
//       primaryFixed: Color(0xffb0f1c2),
//       onPrimaryFixed: Color(0xff00210f),
//       primaryFixedDim: Color(0xff95d5a7),
//       onPrimaryFixedVariant: Color(0xff0f512f),
//       secondaryFixed: Color(0xffb0f1c3),
//       onSecondaryFixed: Color(0xff00210f),
//       secondaryFixedDim: Color(0xff95d5a8),
//       onSecondaryFixedVariant: Color(0xff0f512f),
//       tertiaryFixed: Color(0xffbeeaf7),
//       onTertiaryFixed: Color(0xff001f26),
//       tertiaryFixedDim: Color(0xffa3cdda),
//       onTertiaryFixedVariant: Color(0xff214c57),
//       surfaceDim: Color(0xff101510),
//       surfaceBright: Color(0xff353a35),
//       surfaceContainerLowest: Color(0xff0a0f0b),
//       surfaceContainerLow: Color(0xff181d18),
//       surfaceContainer: Color(0xff1c211c),
//       surfaceContainerHigh: Color(0xff262b26),
//       surfaceContainerHighest: Color(0xff313631),
//     );
//   }

//   ThemeData dark() {
//     return theme(darkScheme().toColorScheme());
//   }

//   static MaterialScheme darkMediumContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(0xff99d9ac),
//       surfaceTint: Color(0xff95d5a7),
//       onPrimary: Color(0xff001b0b),
//       primaryContainer: Color(0xff609e74),
//       onPrimaryContainer: Color(0xff000000),
//       secondary: Color(0xff99d9ac),
//       onSecondary: Color(0xff001b0b),
//       secondaryContainer: Color(0xff609e75),
//       onSecondaryContainer: Color(0xff000000),
//       tertiary: Color(0xffa7d2df),
//       onTertiary: Color(0xff001920),
//       tertiaryContainer: Color(0xff6d97a3),
//       onTertiaryContainer: Color(0xff000000),
//       error: Color(0xffffbab1),
//       onError: Color(0xff370001),
//       errorContainer: Color(0xffff5449),
//       onErrorContainer: Color(0xff000000),
//       background: Color(0xff0f1511),
//       onBackground: Color(0xffdfe4dd),
//       surface: Color(0xff101510),
//       onSurface: Color(0xfff8fcf4),
//       surfaceVariant: Color(0xff414942),
//       onSurfaceVariant: Color(0xffc5cdc4),
//       outline: Color(0xff9da59c),
//       outlineVariant: Color(0xff7d857d),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xffdfe4dc),
//       inverseOnSurface: Color(0xff262b26),
//       inversePrimary: Color(0xff115330),
//       primaryFixed: Color(0xffb0f1c2),
//       onPrimaryFixed: Color(0xff001508),
//       primaryFixedDim: Color(0xff95d5a7),
//       onPrimaryFixedVariant: Color(0xff003f21),
//       secondaryFixed: Color(0xffb0f1c3),
//       onSecondaryFixed: Color(0xff001508),
//       secondaryFixedDim: Color(0xff95d5a8),
//       onSecondaryFixedVariant: Color(0xff003f22),
//       tertiaryFixed: Color(0xffbeeaf7),
//       onTertiaryFixed: Color(0xff001419),
//       tertiaryFixedDim: Color(0xffa3cdda),
//       onTertiaryFixedVariant: Color(0xff0b3c46),
//       surfaceDim: Color(0xff101510),
//       surfaceBright: Color(0xff353a35),
//       surfaceContainerLowest: Color(0xff0a0f0b),
//       surfaceContainerLow: Color(0xff181d18),
//       surfaceContainer: Color(0xff1c211c),
//       surfaceContainerHigh: Color(0xff262b26),
//       surfaceContainerHighest: Color(0xff313631),
//     );
//   }

//   ThemeData darkMediumContrast() {
//     return theme(darkMediumContrastScheme().toColorScheme());
//   }

//   static MaterialScheme darkHighContrastScheme() {
//     return const MaterialScheme(
//       brightness: Brightness.dark,
//       primary: Color(0xffefffef),
//       surfaceTint: Color(0xff95d5a7),
//       onPrimary: Color(0xff000000),
//       primaryContainer: Color(0xff99d9ac),
//       onPrimaryContainer: Color(0xff000000),
//       secondary: Color(0xffefffef),
//       onSecondary: Color(0xff000000),
//       secondaryContainer: Color(0xff99d9ac),
//       onSecondaryContainer: Color(0xff000000),
//       tertiary: Color(0xfff4fcff),
//       onTertiary: Color(0xff000000),
//       tertiaryContainer: Color(0xffa7d2df),
//       onTertiaryContainer: Color(0xff000000),
//       error: Color(0xfffff9f9),
//       onError: Color(0xff000000),
//       errorContainer: Color(0xffffbab1),
//       onErrorContainer: Color(0xff000000),
//       background: Color(0xff0f1511),
//       onBackground: Color(0xffdfe4dd),
//       surface: Color(0xff101510),
//       onSurface: Color(0xffffffff),
//       surfaceVariant: Color(0xff414942),
//       onSurfaceVariant: Color(0xfff5fdf3),
//       outline: Color(0xffc5cdc4),
//       outlineVariant: Color(0xffc5cdc4),
//       shadow: Color(0xff000000),
//       scrim: Color(0xff000000),
//       inverseSurface: Color(0xffdfe4dc),
//       inverseOnSurface: Color(0xff000000),
//       inversePrimary: Color(0xff003119),
//       primaryFixed: Color(0xffb4f6c6),
//       onPrimaryFixed: Color(0xff000000),
//       primaryFixedDim: Color(0xff99d9ac),
//       onPrimaryFixedVariant: Color(0xff001b0b),
//       secondaryFixed: Color(0xffb4f6c7),
//       onSecondaryFixed: Color(0xff000000),
//       secondaryFixedDim: Color(0xff99d9ac),
//       onSecondaryFixedVariant: Color(0xff001b0b),
//       tertiaryFixed: Color(0xffc2eefb),
//       onTertiaryFixed: Color(0xff000000),
//       tertiaryFixedDim: Color(0xffa7d2df),
//       onTertiaryFixedVariant: Color(0xff001920),
//       surfaceDim: Color(0xff101510),
//       surfaceBright: Color(0xff353a35),
//       surfaceContainerLowest: Color(0xff0a0f0b),
//       surfaceContainerLow: Color(0xff181d18),
//       surfaceContainer: Color(0xff1c211c),
//       surfaceContainerHigh: Color(0xff262b26),
//       surfaceContainerHighest: Color(0xff313631),
//     );
//   }

//   ThemeData darkHighContrast() {
//     return theme(darkHighContrastScheme().toColorScheme());
//   }

//   ThemeData theme(ColorScheme colorScheme) => ThemeData(
//         useMaterial3: true,
//         brightness: colorScheme.brightness,
//         colorScheme: colorScheme,
//         textTheme: textTheme.apply(
//           bodyColor: colorScheme.onSurface,
//           displayColor: colorScheme.onSurface,
//         ),
//         scaffoldBackgroundColor: colorScheme.surface,
//         canvasColor: colorScheme.surface,
//         appBarTheme: AppBarTheme(
//           backgroundColor: colorScheme.surface,
//           foregroundColor: colorScheme.onSurface,
//         ),
//         inputDecorationTheme: const InputDecorationTheme(
//           focusColor: Palette.grey,
//           filled: true,
//           fillColor: Palette.white,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(8),
//             ),
//             borderSide: BorderSide(
//               color: Palette.grey,
//               width: 0.2,
//             ),
//           ),
//         ),
//       );

//   List<ExtendedColor> get extendedColors => [];
// }

// class MaterialScheme {
//   const MaterialScheme({
//     required this.brightness,
//     required this.primary,
//     required this.surfaceTint,
//     required this.onPrimary,
//     required this.primaryContainer,
//     required this.onPrimaryContainer,
//     required this.secondary,
//     required this.onSecondary,
//     required this.secondaryContainer,
//     required this.onSecondaryContainer,
//     required this.tertiary,
//     required this.onTertiary,
//     required this.tertiaryContainer,
//     required this.onTertiaryContainer,
//     required this.error,
//     required this.onError,
//     required this.errorContainer,
//     required this.onErrorContainer,
//     required this.background,
//     required this.onBackground,
//     required this.surface,
//     required this.onSurface,
//     required this.surfaceVariant,
//     required this.onSurfaceVariant,
//     required this.outline,
//     required this.outlineVariant,
//     required this.shadow,
//     required this.scrim,
//     required this.inverseSurface,
//     required this.inverseOnSurface,
//     required this.inversePrimary,
//     required this.primaryFixed,
//     required this.onPrimaryFixed,
//     required this.primaryFixedDim,
//     required this.onPrimaryFixedVariant,
//     required this.secondaryFixed,
//     required this.onSecondaryFixed,
//     required this.secondaryFixedDim,
//     required this.onSecondaryFixedVariant,
//     required this.tertiaryFixed,
//     required this.onTertiaryFixed,
//     required this.tertiaryFixedDim,
//     required this.onTertiaryFixedVariant,
//     required this.surfaceDim,
//     required this.surfaceBright,
//     required this.surfaceContainerLowest,
//     required this.surfaceContainerLow,
//     required this.surfaceContainer,
//     required this.surfaceContainerHigh,
//     required this.surfaceContainerHighest,
//   });

//   final Brightness brightness;
//   final Color primary;
//   final Color surfaceTint;
//   final Color onPrimary;
//   final Color primaryContainer;
//   final Color onPrimaryContainer;
//   final Color secondary;
//   final Color onSecondary;
//   final Color secondaryContainer;
//   final Color onSecondaryContainer;
//   final Color tertiary;
//   final Color onTertiary;
//   final Color tertiaryContainer;
//   final Color onTertiaryContainer;
//   final Color error;
//   final Color onError;
//   final Color errorContainer;
//   final Color onErrorContainer;
//   final Color background;
//   final Color onBackground;
//   final Color surface;
//   final Color onSurface;
//   final Color surfaceVariant;
//   final Color onSurfaceVariant;
//   final Color outline;
//   final Color outlineVariant;
//   final Color shadow;
//   final Color scrim;
//   final Color inverseSurface;
//   final Color inverseOnSurface;
//   final Color inversePrimary;
//   final Color primaryFixed;
//   final Color onPrimaryFixed;
//   final Color primaryFixedDim;
//   final Color onPrimaryFixedVariant;
//   final Color secondaryFixed;
//   final Color onSecondaryFixed;
//   final Color secondaryFixedDim;
//   final Color onSecondaryFixedVariant;
//   final Color tertiaryFixed;
//   final Color onTertiaryFixed;
//   final Color tertiaryFixedDim;
//   final Color onTertiaryFixedVariant;
//   final Color surfaceDim;
//   final Color surfaceBright;
//   final Color surfaceContainerLowest;
//   final Color surfaceContainerLow;
//   final Color surfaceContainer;
//   final Color surfaceContainerHigh;
//   final Color surfaceContainerHighest;
// }

// extension MaterialSchemeUtils on MaterialScheme {
//   ColorScheme toColorScheme() {
//     return ColorScheme(
//       brightness: brightness,
//       primary: primary,
//       onPrimary: onPrimary,
//       primaryContainer: primaryContainer,
//       onPrimaryContainer: onPrimaryContainer,
//       secondary: secondary,
//       onSecondary: onSecondary,
//       secondaryContainer: secondaryContainer,
//       onSecondaryContainer: onSecondaryContainer,
//       tertiary: tertiary,
//       onTertiary: onTertiary,
//       tertiaryContainer: tertiaryContainer,
//       onTertiaryContainer: onTertiaryContainer,
//       error: error,
//       onError: onError,
//       errorContainer: errorContainer,
//       onErrorContainer: onErrorContainer,
//       surface: surface,
//       onSurface: onSurface,
//       surfaceContainerHighest: surfaceVariant,
//       onSurfaceVariant: onSurfaceVariant,
//       outline: outline,
//       outlineVariant: outlineVariant,
//       shadow: shadow,
//       scrim: scrim,
//       inverseSurface: inverseSurface,
//       onInverseSurface: inverseOnSurface,
//       inversePrimary: inversePrimary,
//     );
//   }
// }

// class ExtendedColor {
//   const ExtendedColor({
//     required this.seed,
//     required this.value,
//     required this.light,
//     required this.lightHighContrast,
//     required this.lightMediumContrast,
//     required this.dark,
//     required this.darkHighContrast,
//     required this.darkMediumContrast,
//   });
//   final Color seed;
//   final Color value;
//   final ColorFamily light;
//   final ColorFamily lightHighContrast;
//   final ColorFamily lightMediumContrast;
//   final ColorFamily dark;
//   final ColorFamily darkHighContrast;
//   final ColorFamily darkMediumContrast;
// }

// class ColorFamily {
//   const ColorFamily({
//     required this.color,
//     required this.onColor,
//     required this.colorContainer,
//     required this.onColorContainer,
//   });

//   final Color color;
//   final Color onColor;
//   final Color colorContainer;
//   final Color onColorContainer;
// }

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff904a42),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad5),
      onPrimaryContainer: Color(0xff3b0906),
      secondary: Color(0xff775652),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad5),
      onSecondaryContainer: Color(0xff2c1512),
      tertiary: Color(0xff705c2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffcdfa6),
      onTertiaryContainer: Color(0xff261a00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231918),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      surfaceVariant: Color(0xfff5ddda),
      onSurfaceVariant: Color(0xff534341),
      outline: Color(0xff857370),
      outlineVariant: Color(0xffd8c2be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inverseOnSurface: Color(0xffffedea),
      inversePrimary: Color(0xffffb4aa),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0906),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff73342c),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff2c1512),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff5d3f3b),
      tertiaryFixed: Color(0xfffcdfa6),
      onTertiaryFixed: Color(0xff261a00),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff574419),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dedc),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6e3029),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaa6056),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff593b37),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8f6c67),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff534015),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff887242),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231918),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff231918),
      surfaceVariant: Color(0xfff5ddda),
      onSurfaceVariant: Color(0xff4f3f3d),
      outline: Color(0xff6c5b59),
      outlineVariant: Color(0xff897674),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inverseOnSurface: Color(0xffffedea),
      inversePrimary: Color(0xffffb4aa),
      primaryFixed: Color(0xffaa6056),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8d483f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8f6c67),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745450),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff887242),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e592c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dedc),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff44100b),
      surfaceTint: Color(0xff904a42),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e3029),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff341c18),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff593b37),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2e2000),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff534015),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff231918),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff5ddda),
      onSurfaceVariant: Color(0xff2e211f),
      outline: Color(0xff4f3f3d),
      outlineVariant: Color(0xff4f3f3d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe7e3),
      primaryFixed: Color(0xff6e3029),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff521a15),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff593b37),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff402622),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff534015),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a2a02),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dedc),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4aa),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff561e18),
      primaryContainer: Color(0xff73342c),
      onPrimaryContainer: Color(0xffffdad5),
      secondary: Color(0xffe7bdb7),
      onSecondary: Color(0xff442926),
      secondaryContainer: Color(0xff5d3f3b),
      onSecondaryContainer: Color(0xffffdad5),
      tertiary: Color(0xffdfc38c),
      onTertiary: Color(0xff3e2e04),
      tertiaryContainer: Color(0xff574419),
      onTertiaryContainer: Color(0xfffcdfa6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a1110),
      onBackground: Color(0xfff1dedc),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dedc),
      surfaceVariant: Color(0xff534341),
      onSurfaceVariant: Color(0xffd8c2be),
      outline: Color(0xffa08c89),
      outlineVariant: Color(0xff534341),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inverseOnSurface: Color(0xff392e2c),
      inversePrimary: Color(0xff904a42),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff3b0906),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff73342c),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff2c1512),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff5d3f3b),
      tertiaryFixed: Color(0xfffcdfa6),
      onTertiaryFixed: Color(0xff261a00),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff574419),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffbab0),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff330403),
      primaryContainer: Color(0xffcc7b70),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc1bb),
      onSecondary: Color(0xff26100d),
      secondaryContainer: Color(0xffae8883),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe3c790),
      onTertiary: Color(0xff1f1500),
      tertiaryContainer: Color(0xffa68e5b),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1110),
      onBackground: Color(0xfff1dedc),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfffff9f8),
      surfaceVariant: Color(0xff534341),
      onSurfaceVariant: Color(0xffdcc6c3),
      outline: Color(0xffb39e9b),
      outlineVariant: Color(0xff927f7c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inverseOnSurface: Color(0xff322826),
      inversePrimary: Color(0xff74352d),
      primaryFixed: Color(0xffffdad5),
      onPrimaryFixed: Color(0xff2c0101),
      primaryFixedDim: Color(0xffffb4aa),
      onPrimaryFixedVariant: Color(0xff5e241d),
      secondaryFixed: Color(0xffffdad5),
      onSecondaryFixed: Color(0xff200b08),
      secondaryFixedDim: Color(0xffe7bdb7),
      onSecondaryFixedVariant: Color(0xff4b2f2b),
      tertiaryFixed: Color(0xfffcdfa6),
      onTertiaryFixed: Color(0xff191000),
      tertiaryFixedDim: Color(0xffdfc38c),
      onTertiaryFixedVariant: Color(0xff453409),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f8),
      surfaceTint: Color(0xffffb4aa),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffbab0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc1bb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe3c790),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1110),
      onBackground: Color(0xfff1dedc),
      surface: Color(0xff1a1110),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff534341),
      onSurfaceVariant: Color(0xfffff9f8),
      outline: Color(0xffdcc6c3),
      outlineVariant: Color(0xffdcc6c3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dedc),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4e1812),
      primaryFixed: Color(0xffffe0dc),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffbab0),
      onPrimaryFixedVariant: Color(0xff330403),
      secondaryFixed: Color(0xffffe0dc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc1bb),
      onSecondaryFixedVariant: Color(0xff26100d),
      tertiaryFixed: Color(0xffffe4af),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe3c790),
      onTertiaryFixedVariant: Color(0xff1f1500),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3231),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
