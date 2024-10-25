import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemeData {
  ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 10,
        iconTheme: IconThemeData(
          color: Colors.white, // Color of icons in AppBar
          size: 26,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.white, // Color of action icons in AppBar
          size: 26,
        ),
        titleTextStyle: TextStyle(
          fontSize: 26,
        )),

    primarySwatch: Colors.blue, // Main color theme
    visualDensity: VisualDensity
        .adaptivePlatformDensity, // Adjusts padding for different platforms
    fontFamily: 'Raleway', // Custom font family

    // Use ColorScheme to handle accent/secondary color instead of deprecated accentColor
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(secondary: Colors.purple),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue, // Button background color
        foregroundColor: Colors
            .white, // Button text color (use foregroundColor instead of primary)
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontWeight: FontWeight.w900), // Replaces headline1
      displayMedium: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.w900), // Replaces headline2
      displaySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w900), // Replaces headline3
      headlineMedium: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700), // Replaces headline4
      headlineSmall: TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w700), // Replaces headline5
      titleLarge:
          TextStyle(fontSize: 14, color: Colors.black), // Replaces headline6
      titleMedium:
          TextStyle(fontSize: 16, color: Colors.black), // Replaces subtitle1
      titleSmall:
          TextStyle(fontSize: 16, color: Colors.black), // Replaces subtitle2
      bodyLarge:
          TextStyle(fontSize: 16, color: Colors.black), // Replaces bodyText1
      bodyMedium:
          TextStyle(fontSize: 14, color: Colors.black), // Replaces bodyText2
    ),

    iconTheme: const IconThemeData(
      color: Colors.white, // Default icon color
    ),

    snackBarTheme:
        const SnackBarThemeData(
            elevation: 8,
            backgroundColor: Colors.pink,
        ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Button background color
        elevation: 5, // Elevation of the button
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 12), // Padding inside the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        textStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold), // Text style
      ),
    ),
  );
}
