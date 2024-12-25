part of 'themes.dart';

const _superBold = FontWeight.w900;
const _bold = FontWeight.w700;
const _semiBold = FontWeight.w600;
const _medium = FontWeight.w500;
const _regular = FontWeight.w400;
const _light = FontWeight.w300;

TextTheme buildTextTheme({
  required Color textColor,
  required Color buttonColor,
}) =>
    TextTheme(
      displayLarge: GoogleFonts.barlow(
        textStyle: TextStyle(
          fontSize: Sizes.TEXT_SIZE_96,
          color: textColor,
          fontWeight: _superBold,
          fontStyle: FontStyle.normal,
        ),
      ),
      displayMedium: TextStyle(
        fontSize: Sizes.TEXT_SIZE_60,
        color: textColor,
        fontWeight: _bold,
        fontStyle: FontStyle.normal,
      ),
      displaySmall: TextStyle(
        fontSize: Sizes.TEXT_SIZE_48,
        color: textColor,
        fontWeight: _bold,
        fontStyle: FontStyle.normal,
      ),
      headlineMedium: TextStyle(
        fontSize: Sizes.TEXT_SIZE_34,
        color: textColor,
        fontWeight: _regular,
      ),
      headlineSmall: TextStyle(
        fontSize: Sizes.TEXT_SIZE_24,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: Sizes.TEXT_SIZE_24,
        color: textColor,
        fontWeight: _bold,
      ),
      titleMedium: TextStyle(
        fontSize: Sizes.TEXT_SIZE_16,
        color: textColor,
        fontWeight: _semiBold,
      ),
      titleSmall: TextStyle(
        fontSize: Sizes.TEXT_SIZE_14,
        color: textColor,
        fontWeight: _semiBold,
        // fontStyle: FontStyle.normal,
        // fontFamily: AppStrings.WORK_SANS,
      ),
      bodyLarge: GoogleFonts.barlow(
          textStyle: TextStyle(
        fontSize: Sizes.TEXT_SIZE_16,
        color: textColor,
      )),
      bodyMedium: GoogleFonts.barlow(
          textStyle: TextStyle(
        fontSize: Sizes.TEXT_SIZE_14,
        color: textColor,
        //fontWeight: _light,
      )),
      labelLarge: TextStyle(
        fontSize: Sizes.TEXT_SIZE_14,
        color: buttonColor,
        fontStyle: FontStyle.normal,
        fontWeight: _medium,
      ),
      bodySmall: GoogleFonts.barlow(
          textStyle: TextStyle(
        fontSize: Sizes.TEXT_SIZE_12,
        color: textColor,
      )),
    );
