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
      primary: Color(4287646274),
      surfaceTint: Color(4287646274),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957781),
      onPrimaryContainer: Color(4282059014),
      secondary: Color(4286010962),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957781),
      onSecondaryContainer: Color(4281079058),
      tertiary: Color(4285553710),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294762406),
      onTertiaryContainer: Color(4280687104),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965495),
      onBackground: Color(4280490264),
      surface: Color(4294965495),
      onSurface: Color(4280490264),
      surfaceVariant: Color(4294303194),
      onSurfaceVariant: Color(4283646785),
      outline: Color(4286935920),
      outlineVariant: Color(4292395710),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962666),
      inversePrimary: Color(4294948010),
      primaryFixed: Color(4294957781),
      onPrimaryFixed: Color(4282059014),
      primaryFixedDim: Color(4294948010),
      onPrimaryFixedVariant: Color(4285740076),
      secondaryFixed: Color(4294957781),
      onSecondaryFixed: Color(4281079058),
      secondaryFixedDim: Color(4293377463),
      onSecondaryFixedVariant: Color(4284301115),
      tertiaryFixed: Color(4294762406),
      onTertiaryFixed: Color(4280687104),
      tertiaryFixedDim: Color(4292854668),
      onTertiaryFixedVariant: Color(4283909145),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041308),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285411369),
      surfaceTint: Color(4287646274),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289355862),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284037943),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287589479),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283645973),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287132226),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965495),
      onBackground: Color(4280490264),
      surface: Color(4294965495),
      onSurface: Color(4280490264),
      surfaceVariant: Color(4294303194),
      onSurfaceVariant: Color(4283383613),
      outline: Color(4285291353),
      outlineVariant: Color(4287198836),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294962666),
      inversePrimary: Color(4294948010),
      primaryFixed: Color(4289355862),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287449151),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287589479),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285813840),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287132226),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285421868),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041308),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282650635),
      surfaceTint: Color(4287646274),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285411369),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281605144),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284037943),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281212928),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283645973),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965495),
      onBackground: Color(4280490264),
      surface: Color(4294965495),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294303194),
      onSurfaceVariant: Color(4281213215),
      outline: Color(4283383613),
      outlineVariant: Color(4283383613),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937452),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294961123),
      primaryFixed: Color(4285411369),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283570709),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284037943),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282394146),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283645973),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282001922),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449427),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963438),
      surfaceContainer: Color(4294765287),
      surfaceContainerHigh: Color(4294436065),
      surfaceContainerHighest: Color(4294041308),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294948010),
      surfaceTint: Color(4294948010),
      onPrimary: Color(4283833880),
      primaryContainer: Color(4285740076),
      onPrimaryContainer: Color(4294957781),
      secondary: Color(4293377463),
      onSecondary: Color(4282657062),
      secondaryContainer: Color(4284301115),
      onSecondaryContainer: Color(4294957781),
      tertiary: Color(4292854668),
      onTertiary: Color(4282265092),
      tertiaryContainer: Color(4283909145),
      onTertiaryContainer: Color(4294762406),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279898384),
      onBackground: Color(4294041308),
      surface: Color(4279898384),
      onSurface: Color(4294041308),
      surfaceVariant: Color(4283646785),
      onSurfaceVariant: Color(4292395710),
      outline: Color(4288711817),
      outlineVariant: Color(4283646785),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041308),
      inverseOnSurface: Color(4281937452),
      inversePrimary: Color(4287646274),
      primaryFixed: Color(4294957781),
      onPrimaryFixed: Color(4282059014),
      primaryFixedDim: Color(4294948010),
      onPrimaryFixedVariant: Color(4285740076),
      secondaryFixed: Color(4294957781),
      onSecondaryFixed: Color(4281079058),
      secondaryFixedDim: Color(4293377463),
      onSecondaryFixedVariant: Color(4284301115),
      tertiaryFixed: Color(4294762406),
      onTertiaryFixed: Color(4280687104),
      tertiaryFixedDim: Color(4292854668),
      onTertiaryFixedVariant: Color(4283909145),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200625),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294949552),
      surfaceTint: Color(4294948010),
      onPrimary: Color(4281533443),
      primaryContainer: Color(4291591024),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293640635),
      onSecondary: Color(4280684557),
      secondaryContainer: Color(4289628291),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293117840),
      onTertiary: Color(4280227072),
      tertiaryContainer: Color(4289105499),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279898384),
      onBackground: Color(4294041308),
      surface: Color(4279898384),
      onSurface: Color(4294965752),
      surfaceVariant: Color(4283646785),
      onSurfaceVariant: Color(4292658883),
      outline: Color(4289961627),
      outlineVariant: Color(4287790972),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041308),
      inverseOnSurface: Color(4281477158),
      inversePrimary: Color(4285805869),
      primaryFixed: Color(4294957781),
      onPrimaryFixed: Color(4281073921),
      primaryFixedDim: Color(4294948010),
      onPrimaryFixedVariant: Color(4284359709),
      secondaryFixed: Color(4294957781),
      onSecondaryFixed: Color(4280290056),
      secondaryFixedDim: Color(4293377463),
      onSecondaryFixedVariant: Color(4283117355),
      tertiaryFixed: Color(4294762406),
      onTertiaryFixed: Color(4279832576),
      tertiaryFixedDim: Color(4292854668),
      onTertiaryFixedVariant: Color(4282725385),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200625),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948010),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949552),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293640635),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966007),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293117840),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279898384),
      onBackground: Color(4294041308),
      surface: Color(4279898384),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283646785),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4292658883),
      outlineVariant: Color(4292658883),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041308),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283308050),
      primaryFixed: Color(4294959324),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949552),
      onPrimaryFixedVariant: Color(4281533443),
      secondaryFixed: Color(4294959324),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293640635),
      onSecondaryFixedVariant: Color(4280684557),
      tertiaryFixed: Color(4294960303),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293117840),
      onTertiaryFixedVariant: Color(4280227072),
      surfaceDim: Color(4279898384),
      surfaceBright: Color(4282529589),
      surfaceContainerLowest: Color(4279503883),
      surfaceContainerLow: Color(4280490264),
      surfaceContainer: Color(4280753436),
      surfaceContainerHigh: Color(4281477158),
      surfaceContainerHighest: Color(4282200625),
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
