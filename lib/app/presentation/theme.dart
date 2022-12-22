import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: DeliveryColors.white,
    centerTitle: true,
    toolbarTextStyle: GoogleFonts.poppinsTextTheme()
        .copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            color: DeliveryColors.purple,
            fontWeight: FontWeight.bold,
          ),
        )
        .bodyText2,
    titleTextStyle: GoogleFonts.poppinsTextTheme()
        .copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            color: DeliveryColors.purple,
            fontWeight: FontWeight.bold,
          ),
        )
        .headline6,
  ),

  canvasColor: DeliveryColors.white,
  // ignore: deprecated_member_use
  accentColor: DeliveryColors.purple,
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.purple,
    displayColor: DeliveryColors.purple,
  ),
  bottomAppBarColor: DeliveryColors.verylightgrey,
  inputDecorationTheme: InputDecorationTheme(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
    labelStyle: const TextStyle(
      color: DeliveryColors.purple,
    ),
    contentPadding: EdgeInsets.zero,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.lightgrey,
      fontSize: 10,
    ),
  ),
  iconTheme: const IconThemeData(
    color: DeliveryColors.purple,
    size: 40,
  ),
);

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: DeliveryColors.purple,
    centerTitle: true,
    toolbarTextStyle: GoogleFonts.poppinsTextTheme()
        .copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            color: DeliveryColors.white,
            fontWeight: FontWeight.bold,
          ),
        )
        .bodyText2,
    titleTextStyle: GoogleFonts.poppinsTextTheme()
        .copyWith(
          headline6: const TextStyle(
            fontSize: 20,
            color: DeliveryColors.white,
            fontWeight: FontWeight.bold,
          ),
        )
        .headline6,
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    bodyColor: DeliveryColors.green,
    displayColor: DeliveryColors.green,
  ),
  bottomAppBarColor: Colors.transparent,
  // ignore: deprecated_member_use
  accentColor: DeliveryColors.white,
  canvasColor: DeliveryColors.grey,
  scaffoldBackgroundColor: DeliveryColors.dark,
  inputDecorationTheme: InputDecorationTheme(
    border: _borderDark,
    enabledBorder: _borderDark,
    focusedBorder: _borderDark,
    contentPadding: EdgeInsets.zero,
    fillColor: DeliveryColors.grey,
    filled: true,
    hintStyle: GoogleFonts.poppins(
      color: DeliveryColors.white,
      fontSize: 10,
    ),
    labelStyle: const TextStyle(
      color: DeliveryColors.white,
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
