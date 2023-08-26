import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: duplicate_import
import 'package:url_launcher/url_launcher.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Krishnansh\nGoswami"
        .text
        .white
        .xl5
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
                30.heightBox,
                VxBox()
                    .color(colors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: colors.accentColor),
                40.heightBox,
                const SocialAccounts(),
              ]).pSymmetric(
                h: context.percentWidth * 4,
                v: 15,
              ),
              Expanded(
                child: VStack([
                  140.heightBox,
                  "-introduction".text.gray500.widest.sm.make(),
                  10.heightBox,
                  "A sophomore exploring app dev and DSA."
                      .text
                      .white
                      .xl3
                      .maxLines(3)
                      .make()
                      .w(context.isMobile
                          ? context.screenWidth
                          : context.percentWidth * 40),
                  10.heightBox,
                  ElevatedButton(
                    // color: colors.accentColor,
                    onPressed: () {
                      launchUrl(Uri.parse("https://leetcode.com/k_gos/"));
                    },
                    child: const Text("Visit my leetcode profile")
                        .text
                        .semiBold
                        .color(
                          colors.accentColor,
                        )
                        .make(),
                  )
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
    return SizedBox(
      height: 180,
      width: 210,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.rotationY(pi),
        child: Image.asset(
          "assets/pic.png",
          fit: BoxFit.cover,
          // height: context.percentHeight * 120,
          // width: context.percentWidth * 90,
        ),
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
        launchUrl(Uri.parse("https://twitter.com/krish_twts"));
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.github, color: Colors.white).mdClick(() {
        launchUrl(Uri.parse("https://github.com/k-gos"));
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.linkedinIn, color: Colors.white).mdClick(() {
        launchUrl(Uri.parse("https://www.linkedin.com/in/k-gos/"));
      }).make(),
      20.widthBox,
      const Icon(FontAwesomeIcons.instagram, color: Colors.white).mdClick(() {
        launchUrl(Uri.parse("https://www.instagram.com/krrii_shhh/"));
      }).make(),
    ].hStack();
  }
}
