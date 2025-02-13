import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine_reminder/constants.dart';
import 'package:medicine_reminder/pages/home_page.dart';
import 'package:medicine_reminder/pages/new_entry/new_entry_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  NewEntryBloc? newEntryBloc;

  @override
  void initState() {
    newEntryBloc = NewEntryBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<NewEntryBloc>.value(
      value: newEntryBloc!,
      child: Sizer(builder: (context, orientation, deviceType) {
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
              // headline5
              headlineSmall: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: kTextColor,
              ),
              // headline6
              titleLarge: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: kTextColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
              // subTitle1
              titleMedium: GoogleFonts.poppins(
                color: kPrimaryColor,
                fontSize: 15.sp,
              ),
              // subTitle2
              titleSmall: GoogleFonts.poppins(
                color: kTextLightColor,
                fontSize: 12.sp,
              ),
              // caption
              bodySmall: GoogleFonts.poppins(
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                color: kTextColor,
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
      }),
    );
  }
}