import 'package:Tukay/widgets/colors.dart';
import 'package:Tukay/widgets/text.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: MyText(
          text: 'Hello World',
          color: AppColors.secondaryColor,
          size: 20,
        ),
      ),
    );
  }
}
