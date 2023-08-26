import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Krishnansh\nGoswami"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 10 : 15)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          const PictureWidget(),
          Row(
            children: [
              VStack([
                const CustomAppBar().shimmer(
                  primaryColor: colors.accentColor,
                ),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(colors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: colors.accentColor),
                30.heightBox,
                const SocialAccounts(),
              ]).pSymmetric(
                h: context.percentWidth * 5,
                v: 32,
              ),
              Expanded(
                child: VStack([
                  "-introduction".text.gray500.widest.sm.make(),
                ]),
              )
            ],
          )
        ]),
      ])).make(),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topRight,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/pic.png",
        fit: BoxFit.cover,
        // height: context.percentHeight * 60,
        // width: context.percentWidth * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_double_arrow_right_rounded,
      size: 50,
      color: colors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(FontAwesomeIcons.twitter, color: Colors.white).mdClick(() {
        launchUrl("https://twitter.com/krish_twts" as Uri);
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.github, color: Colors.white).mdClick(() {
        launchUrl("https://github.com/k-gos" as Uri);
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.linkedinIn, color: Colors.white).mdClick(() {
        launchUrl("https://www.linkedin.com/in/k-gos/" as Uri);
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.instagram, color: Colors.white).mdClick(() {
        launchUrl("https://www.instagram.com/krrii_shhh/" as Uri);
      }).make(),
    ].hStack();
  }
}
