import 'package:flutter/material.dart';

class NavLink extends StatelessWidget {
  final String text;
  final bool isActive;
  const NavLink({super.key, this.text = '', this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 2,
                color: isActive
                    ? const Color(0xFF40B393)
                    : Colors.white.withAlpha(0)),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
