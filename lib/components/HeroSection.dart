import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Flex(
      direction: width<1032?Axis.vertical:Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PCB\nDesign',
              style: GoogleFonts.lalezar(
                textStyle: const TextStyle(
                    fontSize: 32,
                    color: Color(0xFF40B393),
                    height: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5),
            AnimatedTextKit(
              totalRepeatCount: 2,
              animatedTexts: [
                TypewriterAnimatedText(
                  speed: const Duration(milliseconds: 60),
                  'Potential of Tomorrow is just a click away\nTry Our Services Now!',
                  textStyle: const TextStyle(
                    fontSize: 24,
                    color: Color(0xFF6F6F6F),
                  ),
                ),
              ],
            )
          ],
        ),
        Image.asset(
          'assets/images/chip-art.png',
          height: 400,
          width: 400,
        ),
      ],
    );
  }
}
