import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  //Primary
  static const Color _lightPrimaryColor = Color(0xffffffff);
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

  //Text themes
  static const TextTheme _lightTextTheme = TextTheme(
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

  static const TextTheme _darkTextTheme = TextTheme(
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
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _lightBackgroundColor,
      iconTheme: const IconThemeData(color: _lightIconColor),
      toolbarTextStyle: _lightTextTheme.bodyText2,
      titleTextStyle: _lightTextTheme.headline6,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    textTheme: _lightTextTheme,
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
          color:  Color(0xFF001442),
        ),
        side: const BorderSide(color: _lightBackgroundButtonColor, width: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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
      toolbarTextStyle: _darkTextTheme.bodyText2,
      titleTextStyle: _darkTextTheme.headline6,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor,
    ),
    textTheme: _darkTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ),
  );
}
