import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors.dart';
class ThemesMode{
 static ThemeData darkTheme =ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: AppTheme.pinkColor
    ),
    iconTheme:const IconThemeData(
      color: AppTheme.grey
    ),
    buttonTheme:const ButtonThemeData(
      buttonColor: AppTheme.lightGrey
    ),
    scaffoldBackgroundColor: AppTheme.black,
    appBarTheme:const AppBarTheme(
      backgroundColor: AppTheme.pinkColor,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.lightColor,
      )
    ),
    toggleButtonsTheme:const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      selectedColor: AppTheme.primaryColor,
      fillColor: AppTheme.grey
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppTheme.pinkColor),
       fillColor: MaterialStateProperty.all(AppTheme.grey)
    ),
  );

  ///////////////////
 static ThemeData lightTheme =ThemeData(
    colorScheme: const ColorScheme.light(
        primary: AppTheme.primaryColor
    ),
    iconTheme:const IconThemeData(
        color: AppTheme.grey
    ),
    buttonTheme:const ButtonThemeData(
        buttonColor: AppTheme.lightGrey
    ),
    scaffoldBackgroundColor: AppTheme.backgroundColor,
    appBarTheme:const AppBarTheme(
        backgroundColor: AppTheme.pinkColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppTheme.lightColor,
        )
    ),
    toggleButtonsTheme:const ToggleButtonsThemeData(
        selectedBorderColor: Colors.transparent,
        selectedColor: AppTheme.primaryColor,
        fillColor: AppTheme.grey
    ),
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppTheme.pinkColor),
        fillColor: MaterialStateProperty.all(AppTheme.grey)
    ),
  );


}