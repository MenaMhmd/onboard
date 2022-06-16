import 'package:flutter/material.dart';
import 'package:ecommerceudemy/presentation/resourses/ColorManager.dart';
import 'package:ecommerceudemy/presentation/resourses/FontManager.dart';

import 'package:ecommerceudemy/presentation/resourses/style_manager.dart';
import 'package:ecommerceudemy/presentation/resourses/value_manager.dart';

ThemeData getapplicationtheme(){
  return ThemeData(
    //maincolor
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightgrey,
    primaryColorDark: ColorManager.darkprimary,
    disabledColor: ColorManager.grey1,
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey1,
      elevation: Apppsize.s4,
    ),
    //apptheme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: Apppsize.s4,
      shadowColor: ColorManager.lightgrey,
      titleTextStyle: getregularstyle(color: ColorManager.white,fontsize: Fontsize.s16),
    ),



    //button
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor:ColorManager.grey1 ,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightgrey,
    ),
//elevationbutton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getregularstyle(color: ColorManager.white,fontsize: Fontsize.s18),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Apppsize.s14)
        )
      ),
    ),
    //text
    textTheme: TextTheme(
      //display is released2021
     // displayLarge: getlightstyle(color: ColorManager.white,fontsize: Fontsize.s22),
      //headline1 is released 2018 make error when mix between two releases
      headline1: getsemiboldstyle(color: ColorManager.white,fontsize: Fontsize.s16),
      subtitle1: getsemiboldstyle(color: ColorManager.white,fontsize: Fontsize.s14),
      caption: getregularstyle(color: ColorManager.grey1),
      bodyText1: getregularstyle(color: ColorManager.grey),
    ),
    ////inputdecoration
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(Apppadding.p8),
      hintStyle: getregularstyle(color: ColorManager.grey,fontsize: Fontsize.s14),
      labelStyle: getmeduimstyle(color: ColorManager.grey,fontsize: Fontsize.s14),
      errorStyle: getregularstyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: Apppsize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(Apppsize.s8))
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey,width: Apppsize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(Apppsize.s8))
      ),
      //error border
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey,width: Apppsize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(Apppsize.s8))
      ),
      focusedErrorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: Apppsize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(Apppsize.s8))
      ),
    ),

    
  );

}