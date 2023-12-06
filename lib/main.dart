import 'package:Tukay/screens/splashscreen.dart';
import 'package:Tukay/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme:
            GoogleFonts.darkerGrotesqueTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(background: AppColors.white),
      ),
      home: const SplashScreen(),
    );
  }
}
