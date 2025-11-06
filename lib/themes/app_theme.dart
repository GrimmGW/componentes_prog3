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

    //tema para filledButton
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppTheme.primary),
        foregroundColor: WidgetStateProperty.all(Colors.black),
      )
    ),

    //tema para textButton
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppTheme.primaryDarker),
      )
    ),

    //tema para inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: Colors.black),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2
        )
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
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