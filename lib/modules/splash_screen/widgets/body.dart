import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_chillox/application/components/chillex_logo.dart';
import 'package:projeto_chillox/application/components/social_media_icons.dart';

import 'splash_content.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: height.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChillexLogo(),
          const SizedBox(height: 20),
          const SplashContent(),
          const SizedBox(height: 100),
          SocialMediaIcons()
        ],
      ),
    );
  }
}
