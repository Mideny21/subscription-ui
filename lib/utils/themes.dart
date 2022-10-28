import 'app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
);
