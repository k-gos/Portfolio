import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:  colors.primaryColor,
      child: const VStack([
        HeaderScreen(),

      ]).scrollVertical(),
    );
  }
}