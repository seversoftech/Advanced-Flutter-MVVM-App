import 'package:advance_flutter_mvvc/presentation/color_manager.dart';
import 'package:advance_flutter_mvvc/presentation/font_manager.dart';
import 'package:advance_flutter_mvvc/presentation/styles_manager.dart';
import 'package:advance_flutter_mvvc/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),
    splashColor: ColorManager.primaryOpacity70,

// card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
// appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),
//button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),
//ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppMargin.m12))),
    ),

//text theme
    textTheme: TextTheme(
        displayLarge:
            getBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
        titleMedium: getMediumStyle(
            color: ColorManager.lightGrey, fontSize: FontSize.s14),
        bodySmall: getRegularStyle(color: ColorManager.grey1),
        bodyLarge: getRegularStyle(color: ColorManager.grey)),

//inputDecorationTheme

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularStyle(color: ColorManager.error),
      focusedErrorBorder:OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppMargin.m8),
        ),
      ) ,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppMargin.m8),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppMargin.m8),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppMargin.m8),
        ),
      ),
    ),
  );
}