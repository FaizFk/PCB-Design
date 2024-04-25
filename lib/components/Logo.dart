import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/pcb-favicon.png',
          height: 55,
          width: 55,
        ),
        const SizedBox(height: 5,),
        const Text('PCB Design',style: TextStyle(color:Color(0xFF40B393) ,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
