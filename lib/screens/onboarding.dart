import 'package:Tukay/screens/homescreen.dart';
import 'package:Tukay/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int Currentindex = 0;
  PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: Currentindex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: 3,
              onPageChanged: (index) {
                setState(() {
                  Currentindex = index;
                });
              },
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      'images/onb-$index.png',
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Get Urgent 2k and beat SAPA today',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.darkerGrotesque(
                          height: 0.8,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 48),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Join over 10,000 people who have used Tukay to get urgent 2k and beat earn #6  CASHBACK on every 2k you borrow',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.darkerGrotesque(
                          height: 1,
                          color: AppColors.secondaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) => builddot(index, context)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.secondaryColor)),
            child: TextButton(
              onPressed: () {
                if (Currentindex == 3 - 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homescreen()));
                } else {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                }
              },
              child: Text(
                Currentindex == 3 - 1 ? 'Get Started' : 'Continue',
                style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontFamily: GoogleFonts.darkerGrotesque().fontFamily,
                    fontSize: 27,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container builddot(index, context) {
    return Container(
      height: 10,
      width: Currentindex == index ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.secondaryColor)),
    );
  }
}
