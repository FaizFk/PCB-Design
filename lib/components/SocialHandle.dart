import 'package:flutter/material.dart';

class SocialHandle extends StatelessWidget {
  final String path;
  const SocialHandle({
    super.key,
    required this.path
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17,vertical: 12),
      height: 30,
      width: 30,
      child: InkWell(
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          color: iconColor,
          colorBlendMode: BlendMode.srcATop,
        ),
      ),
    );
  }
}

Color iconColor = Colors.white;
