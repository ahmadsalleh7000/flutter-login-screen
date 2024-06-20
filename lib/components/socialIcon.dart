import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final int flex;
  final double height;
  final double width;
  final String backImage;
  final String frontImage;
   const SocialIcon({super.key, this.flex = 1, this.backImage = "assets/images/Ellipse.png", this.frontImage = "assets/images/Apple.png", this.height=50, this.width=50});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Center(
        child: Stack(children: [
          Image.asset(
            backImage,
            height: height,
            width: width,
          ),
          Image.asset(
            frontImage,
            height: height,
            width: width,
          ),
        ]),
      ),
    );
  }
}
