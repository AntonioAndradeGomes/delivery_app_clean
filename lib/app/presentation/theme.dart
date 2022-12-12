import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:flutter/material.dart'
    show
        ThemeData,
        InputDecorationTheme,
        OutlineInputBorder,
        BorderRadius,
        BorderSide,
        IconThemeData,
        BorderStyle,
        TextStyle;
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  canvasColor: DeliveryColors.white,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  accentColor: DeliveryColors.purple,
  inputDecorationTheme: InputDecorationTheme(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.lightgrey,
      fontSize: 10,
    ),
    labelStyle: const TextStyle(
      color: DeliveryColors.white,
    ),
  ),
  iconTheme: const IconThemeData(
    color: DeliveryColors.purple,
    size: 40,
  ),
);

final darkTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.green,
    displayColor: DeliveryColors.green,
  ),
  accentColor: DeliveryColors.white,
  canvasColor: DeliveryColors.grey,
  scaffoldBackgroundColor: DeliveryColors.dark,
  inputDecorationTheme: InputDecorationTheme(
    border: _borderDark,
    enabledBorder: _borderDark,
    focusedBorder: _borderDark,
    fillColor: DeliveryColors.grey,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.white,
      fontSize: 10,
    ),
    labelStyle: const TextStyle(
      color: DeliveryColors.purple,
    ),
  ),
  iconTheme: const IconThemeData(
    color: DeliveryColors.white,
    size: 40,
  ),
);

final _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: DeliveryColors.verylightgrey,
    width: 2,
    style: BorderStyle.solid,
  ),
);

final _borderDark = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: const BorderSide(
    color: DeliveryColors.grey,
    width: 2,
    style: BorderStyle.solid,
  ),
);
