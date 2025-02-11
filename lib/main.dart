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
            backgroundColor: kScaffoldColor,
            elevation: 0,
          ),
          textTheme: TextTheme(
            headlineMedium: TextStyle(
              fontSize: 28.sp,
              color: kSecondaryColor,
              fontWeight: FontWeight.w500,
            ),
            headlineLarge: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
              color: kTextColor,
            ),
            titleSmall: GoogleFonts.poppins(
              color: kTextColor,
              fontSize: 12.sp,
            ),
          ),
        ),
        home: const HomePage(),
      );
    });
  }
}
