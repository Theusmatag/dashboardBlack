import 'package:dashboadblack/global/kew_global_context.dart';
import 'package:dashboadblack/login/presenter/login.page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppKeyGlobalContext.navigatorKey,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 226, 187, 68),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: GoogleFonts.urbanistTextTheme(Typography.whiteCupertino),
        useMaterial3: true,
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
      ),
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => const LoginPage()},
    );
  }
}
