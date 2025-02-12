import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_reminder/constants.dart';
import 'package:medicine_reminder/pages/home_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pill Reminder',
        theme: ThemeData.dark().copyWith(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kScaffoldColor,
          appBarTheme: AppBarTheme(
              toolbarHeight: 7.h,
              backgroundColor: kScaffoldColor,
              elevation: 0,
              iconTheme: IconThemeData(
                color: kSecondaryColor,
                size: 20.sp,
              ),
              titleTextStyle: GoogleFonts.mulish(
                color: kTextColor,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                fontSize: 16.sp,
              )),
          textTheme: TextTheme(
            // headline3
            displaySmall: TextStyle(
              fontSize: 28.sp,
              color: kSecondaryColor,
              fontWeight: FontWeight.w500,
            ),
            // headline4
            headlineMedium: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
              color: kTextColor,
            ),
            // subTitle2
            titleSmall: GoogleFonts.poppins(
              color: kTextColor,
              fontSize: 12.sp,
            ),
            bodySmall: GoogleFonts.poppins(
              fontSize: 9.sp,
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
            labelMedium: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: kTextColor,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
            ),
          ),
          // Lets customize the timePicker theme
          timePickerTheme: TimePickerThemeData(
            backgroundColor: kScaffoldColor,
            // hourMinuteColor: kTextColor,
            // hourMinuteTextColor: kScaffoldColor,
            // dayPeriodColor: kTextColor,
            // dayPeriodTextColor: kScaffoldColor,
            // dialBackgroundColor: kTextColor,
            dialHandColor: kPrimaryColor,
            // dialTextColor: kScaffoldColor,
            entryModeIconColor: kOtherColor,
            dayPeriodTextStyle: GoogleFonts.aBeeZee(
              fontSize: 10.sp,
            ),
          ),
        ),
        home: const HomePage(),
      );
    });
  }
}
