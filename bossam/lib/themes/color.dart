import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283194514),
      surfaceTint: Color(4283194514),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292600319),
      onPrimaryContainer: Color(4278327115),
      secondary: Color(4283128978),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292600319),
      onSecondaryContainer: Color(4278196043),
      tertiary: Color(4286532987),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294956791),
      onTertiaryContainer: Color(4281534516),
      error: Color(4287646275),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282059015),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282730063),
      outline: Color(4285953664),
      outlineVariant: Color(4291217104),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290102527),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278327115),
      primaryFixedDim: Color(4290102527),
      onPrimaryFixedVariant: Color(4281615481),
      secondaryFixed: Color(4292600319),
      onSecondaryFixed: Color(4278196043),
      secondaryFixedDim: Color(4290037247),
      onSecondaryFixedVariant: Color(4281484408),
      tertiaryFixed: Color(4294956791),
      onTertiaryFixed: Color(4281534516),
      tertiaryFixedDim: Color(4293964776),
      onTertiaryFixedVariant: Color(4284757602),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281286772),
      surfaceTint: Color(4283194514),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284641962),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281221236),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284576682),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284494430),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4288111506),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411370),
      onError: Color(4294967295),
      errorContainer: Color(4289355864),
      onErrorContainer: Color(4294967295),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4279900961),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4282466891),
      outline: Color(4284309095),
      outlineVariant: Color(4286151299),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294045943),
      inversePrimary: Color(4290102527),
      primaryFixed: Color(4284641962),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282997391),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284576682),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282931855),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288111506),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286335864),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278853202),
      surfaceTint: Color(4283194514),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281286772),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278722386),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281221236),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282060859),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284494430),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650636),
      onError: Color(4294967295),
      errorContainer: Color(4285411370),
      onErrorContainer: Color(4294967295),
      background: Color(4294637823),
      onBackground: Color(4279900961),
      surface: Color(4294637823),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4293059052),
      onSurfaceVariant: Color(4280427563),
      outline: Color(4282466891),
      outlineVariant: Color(4282466891),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4293454847),
      primaryFixed: Color(4281286772),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279707997),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281221236),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279642717),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284494430),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282850118),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532704),
      surfaceBright: Color(4294637823),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243322),
      surfaceContainer: Color(4293848564),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290102527),
      surfaceTint: Color(4290102527),
      onPrimary: Color(4280036705),
      primaryContainer: Color(4281615481),
      onPrimaryContainer: Color(4292600319),
      secondary: Color(4290037247),
      onSecondary: Color(4279905632),
      secondaryContainer: Color(4281484408),
      onSecondaryContainer: Color(4292600319),
      tertiary: Color(4293964776),
      onTertiary: Color(4283113290),
      tertiaryContainer: Color(4284757602),
      onTertiaryContainer: Color(4294956791),
      error: Color(4294948011),
      onError: Color(4283833881),
      errorContainer: Color(4285739821),
      onErrorContainer: Color(4294957782),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4293124585),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4291217104),
      outline: Color(4287598746),
      outlineVariant: Color(4282730063),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4281282614),
      inversePrimary: Color(4283194514),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278327115),
      primaryFixedDim: Color(4290102527),
      onPrimaryFixedVariant: Color(4281615481),
      secondaryFixed: Color(4292600319),
      onSecondaryFixed: Color(4278196043),
      secondaryFixedDim: Color(4290037247),
      onSecondaryFixedVariant: Color(4281484408),
      tertiaryFixed: Color(4294956791),
      onTertiaryFixed: Color(4281534516),
      tertiaryFixedDim: Color(4293964776),
      onTertiaryFixedVariant: Color(4284757602),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290497023),
      surfaceTint: Color(4290102527),
      onPrimary: Color(4278194753),
      primaryContainer: Color(4286484424),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290431487),
      onSecondary: Color(4278194752),
      secondaryContainer: Color(4286418888),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294228204),
      onTertiary: Color(4281140014),
      tertiaryContainer: Color(4290150320),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949554),
      onError: Color(4281533444),
      errorContainer: Color(4291591026),
      onErrorContainer: Color(4278190080),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4294769407),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4291480276),
      outline: Color(4288848556),
      outlineVariant: Color(4286743180),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4280887855),
      inversePrimary: Color(4281681274),
      primaryFixed: Color(4292600319),
      onPrimaryFixed: Color(4278193462),
      primaryFixedDim: Color(4290102527),
      onPrimaryFixedVariant: Color(4280431463),
      secondaryFixed: Color(4292600319),
      onSecondaryFixed: Color(4278193717),
      secondaryFixedDim: Color(4290037247),
      onSecondaryFixedVariant: Color(4280365927),
      tertiaryFixed: Color(4294956791),
      onTertiaryFixed: Color(4280680488),
      tertiaryFixedDim: Color(4293964776),
      onTertiaryFixedVariant: Color(4283573584),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294769407),
      surfaceTint: Color(4290102527),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290497023),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294769407),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290431487),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294228204),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949554),
      onErrorContainer: Color(4278190080),
      background: Color(4279374616),
      onBackground: Color(4293124585),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282730063),
      onSurfaceVariant: Color(4294769407),
      outline: Color(4291480276),
      outlineVariant: Color(4291480276),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4279510874),
      primaryFixed: Color(4292994815),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290497023),
      onPrimaryFixedVariant: Color(4278194753),
      secondaryFixed: Color(4292994815),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290431487),
      onSecondaryFixedVariant: Color(4278194752),
      tertiaryFixed: Color(4294958583),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294228204),
      onTertiaryFixedVariant: Color(4281140014),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280164133),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
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
