import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SatisfiedCustomers extends StatelessWidget {
  const SatisfiedCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Our Satisfied Customers',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.grey.shade800),
        ),
        const SizedBox(height: 40),
        Flex(
          direction: width<750?Axis.vertical:Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(width: 20),
            PersonCard(
              path: 'assets/images/person1.jpg',
              name: 'Millie Brown',
              feedback:
                  '"I never knew purchasing ICs would be so easy. PCB Desing made my career go boom."',
            ),
            PersonCard(
              path: 'assets/images/person2.jpg',
              name: 'Marry Smith',
              feedback:
                  '"I never knew purchasing ICs would be so easy. PCB Desing made my career go boom."',
            ),
            PersonCard(
              path: 'assets/images/person3.webp',
              name: 'Lily Dark',
              feedback:
                  '"I never knew purchasing ICs would be so easy. PCB Desing made my career go boom."',
            ),
            PersonCard(
              path: 'assets/images/person4.webp',
              name: 'Mark Strong',
              feedback:
                  '"I never knew purchasing ICs would be so easy. PCB Desing made my career go boom."',
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ],
    );
  }
}

class PersonCard extends StatelessWidget {
  final String path;
  final String name;
  final String feedback;
  const PersonCard(
      {super.key,
      required this.path,
      required this.name,
      required this.feedback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 170,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 64, // Image radius
            backgroundImage: AssetImage(path),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            feedback,
            textAlign: TextAlign.center,
            style: GoogleFonts.lexend(
                textStyle: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
