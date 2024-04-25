import 'package:flutter/material.dart';
import 'package:pcb_design/components/Footer.dart';
import 'package:pcb_design/components/HeroSection.dart';
import 'package:pcb_design/components/NavBar.dart';
import 'package:pcb_design/components/SatisfiedCustomers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              SizedBox(height: 20),
              HeroSection(),
              SizedBox(height: 60),
              SatisfiedCustomers(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
