import 'package:flutter/material.dart';

class AppTheme {

  //Es el color primario o principal de nuestro proyecto
  static Color? primary = Colors.orangeAccent;
  static Color? primaryDarker = Colors.orangeAccent[700];

  static ThemeData lightTheme = ThemeData.light().copyWith(

    //Tema para el AppBar
    appBarTheme: AppBarThemeData(
      backgroundColor: AppTheme.primary,
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppTheme.primary),
        foregroundColor: WidgetStateProperty.all(Colors.black),
      )
    ),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppTheme.primaryDarker),
      )
    )

  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(

    //Tema para el AppBar
    appBarTheme: AppBarThemeData(
      backgroundColor: AppTheme.primary,
      foregroundColor: Colors.black
    ),

  );

}