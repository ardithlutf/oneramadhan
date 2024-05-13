import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  //Primary
  static const Color _lightPrimaryColor = Color(0xFF001442);
  static const Color _darkPrimaryColor = Color(0xFF1a222d);

  //Background
  static const Color _lightBackgroundColor = Color(0xffffffff);
  static const Color _darkBackgroundColor = Color(0xFF1a222d);

  //Text
  static const Color _lightTextColor = Color(0xff000000);
  static const Color _darkTextColor = Color(0xffffffff);

  //Icon
  static const Color _lightIconColor = Color(0xff000000);
  static const Color _darkIconColor = Color(0xffffffff);

  // Backgorund Button
  static const Color _lightBackgroundButtonColor = Color(0xFF001442);
  static const Color _darkBackgroundButtonColor = Color(0xFF1a222d);

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF001442),
    onPrimary: Colors.white,
    secondary: Color(0xFF555E7A),
    onSecondary: Colors.white,
    tertiary: Color(0xFF2C003E),
    onTertiary: Colors.white,
    primaryContainer: Color(0xFF163375),
    onPrimaryContainer: Color(0xFFB5C6FF),
    secondaryContainer: Color(0xFFDAE1FF),
    onSecondaryContainer: Color(0xFF3E4762),
    tertiaryContainer: Color(0xFF502363),
    onTertiaryContainer: Color(0xFFECB3FE),
    error: Color(0xFFBA1A1A),
    onError: Colors.white,
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFE6EBEB),
    onBackground: Colors.white,
    surfaceTint: Color(0xFFDAD9E0),
    surface: Color(0xFFFAF8FF),
    onSurface: Color(0xFF1A1B20),
    onSurfaceVariant: Color(0xFF444650),
    outline: Color(0xFF757682),
    outlineVariant: Color(0xFFC5C6D2),
    scrim: Color(0xFF000000),
    shadow: Color(0xFF000000),
    inversePrimary: Color(0xFF2F3035),
    onInverseSurface: Color(0xFFF1F0F6),
    inverseSurface: Color(0xFFB3C5FF),
    brightness: Brightness.light,
  );

  //Text themes
  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 96.0,
      fontWeight: FontWeight.w700,
      color: _lightTextColor,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 60.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 48.0,
      fontWeight: FontWeight.w700,
      color: _lightTextColor,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
      color: _lightTextColor,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: _lightTextColor,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: _lightTextColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _lightTextColor,
    ),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 96.0,
      fontWeight: FontWeight.w700,
      color: _darkTextColor,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 60.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 48.0,
      fontWeight: FontWeight.w700,
      color: _darkTextColor,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 34.0,
      fontWeight: FontWeight.w700,
      color: _darkTextColor,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: _darkTextColor,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: _darkTextColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: _darkTextColor,
    ),
  );

  ///Light theme
  static final ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _lightBackgroundColor,
      iconTheme: const IconThemeData(color: _lightIconColor),
      toolbarTextStyle: lightTextTheme.bodyText2,
      titleTextStyle: lightTextTheme.headline6,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    textTheme: lightTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(48, 48),
        backgroundColor: _lightBackgroundButtonColor,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.white,
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(48, 48),
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Color(0xFF001442),
        ),
        side: const BorderSide(color: _lightBackgroundButtonColor, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightColorScheme.primary,
      selectionColor: const Color(0xFF001442).withOpacity(0.5),
      selectionHandleColor: const Color(0xFF001442),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(12),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color(0xFFC5C6D2),
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: Color(0xFF001442),
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF358EF8),
      ),
    ),
  );

  ///Dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _darkBackgroundColor,
      iconTheme: const IconThemeData(color: _darkIconColor),
      toolbarTextStyle: darkTextTheme.bodyText2,
      titleTextStyle: darkTextTheme.headline6,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor,
    ),
    textTheme: darkTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );
}
