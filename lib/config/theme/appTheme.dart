import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/colors_manager.dart';

class AppTheme{
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.primaryColor,
          primary: ColorManager.primaryColor
      ),

      textTheme: TextTheme(
        bodySmall: TextStyle(
            color: Color(0xff06004F).withOpacity(0.6),
            fontWeight: FontWeight.w300,
            fontSize: 16.sp
        ) ,
        labelMedium: TextStyle(

            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            overflow: TextOverflow.ellipsis,

        ),
        labelSmall: TextStyle(

            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: ColorManager.primaryColor
        ),
        labelLarge: TextStyle(
          fontWeight:FontWeight.w500,
          fontSize: 18.sp,
          color: Color(0xff06004F),

        ),
        bodyMedium: TextStyle(
            decoration: TextDecoration.lineThrough,

            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: ColorManager.primaryColor
        ),

      )
  );
}