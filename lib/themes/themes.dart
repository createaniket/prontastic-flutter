import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.bgColor,
    cardColor: AppColors.white,
    appBarTheme: AppBarTheme(
        elevation: 0,
        color: AppColors.bgColor,
        iconTheme: const IconThemeData(color: AppColors.black),
        titleTextStyle: GoogleFonts.montserrat(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18)),
    iconTheme: const IconThemeData(color: AppColors.black, size: 20),
    textTheme: TextTheme(
        headlineLarge: GoogleFonts.montserrat(
            fontSize: 80, fontWeight: FontWeight.w500, color: AppColors.white),
        headlineMedium: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.white),
        headlineSmall: GoogleFonts.montserrat(
            fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.white),
        displayLarge: GoogleFonts.montserrat(
            fontSize: 23, fontWeight: FontWeight.w400, color: AppColors.white),
        displayMedium: GoogleFonts.montserrat(
            fontSize: 22, fontWeight: FontWeight.w400, color: AppColors.white),
        displaySmall: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.white),
        bodyLarge: GoogleFonts.montserrat(
            fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.white),
        bodyMedium: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.white),
        bodySmall: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.white),
        titleLarge: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        titleMedium: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        titleSmall: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        labelLarge: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.limeGreen),
        labelMedium: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.limeGreen),
        labelSmall: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.limeGreen)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(10),
          shadowColor: WidgetStateProperty.all<Color>(
              AppColors.veryLightGray.withOpacity(0.4)),
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.veryLightGray),
          padding: WidgetStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 20)),
          textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.black)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        )),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all<Color>(AppColors.white),
      trackColor: WidgetStateProperty.all<Color>(AppColors.white),
      overlayColor: WidgetStateProperty.all<Color>(AppColors.white),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColors.black,
    splashColor: AppColors.black,
    cardColor: AppColors.black,
    indicatorColor: AppColors.white,
    appBarTheme: AppBarTheme(
        elevation: 0,
        color: AppColors.black,
        iconTheme: const IconThemeData(color: AppColors.white),
        titleTextStyle: GoogleFonts.montserrat(
            color: AppColors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18)),
    iconTheme: const IconThemeData(color: AppColors.white, size: 20),
    textTheme: TextTheme(
        headlineLarge: GoogleFonts.montserrat(
            fontSize: 80, fontWeight: FontWeight.w700, color: AppColors.white),
        headlineMedium: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.white),
        headlineSmall: GoogleFonts.montserrat(
            fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.white),
        displayLarge: GoogleFonts.montserrat(
            fontSize: 80, fontWeight: FontWeight.w400, color: AppColors.white),
        displayMedium: GoogleFonts.montserrat(
            fontSize: 48, fontWeight: FontWeight.w400, color: AppColors.white),
        displaySmall: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.white),
        bodyLarge: GoogleFonts.montserrat(
            fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.white),
        bodyMedium: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.white),
        bodySmall: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.white),
        titleLarge: GoogleFonts.montserrat(
            fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        titleMedium: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        titleSmall: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.limeGreen),
        labelLarge: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.limeGreen),
        labelMedium: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.limeGreen),
        labelSmall: GoogleFonts.montserrat(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.limeGreen)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all<Color>(AppColors.veryLightGray),
          padding: WidgetStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 20)),
          textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Archivo',
              color: AppColors.white)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all<Color>(AppColors.white),
      trackColor: WidgetStateProperty.all<Color>(AppColors.white),
      overlayColor: WidgetStateProperty.all<Color>(AppColors.white),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  );
}
