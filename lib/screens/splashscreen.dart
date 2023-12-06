
import 'package:Tukay/screens/onboarding.dart';
import 'package:Tukay/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          image: DecorationImage(
            image: AssetImage('images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                child: Image.asset(
                  'images/logotext.png',
                ),
              ),
            ],
          ),
        )
            .animate()
            .slideY(
              begin: -1,
              end: -0.1,
              duration: 1000.ms,
              curve: Curves.easeIn,
            )
            .then(delay: 1000.ms)
            .scaleXY(
              end: 1,
              duration: 1000.ms,
              curve: Curves.easeIn,
            )
            .callback(
                duration: 1000.ms,
                callback: (bool isCompleted) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const OnboardingScreen();
                  }));
                }),
      ),
    );
  }
}
