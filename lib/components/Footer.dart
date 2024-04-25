import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcb_design/components/ContactForm.dart';
import 'Logo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      width: width,
      decoration: const BoxDecoration(color: Colors.black),
      child: Flex(
        direction: width < 700 ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(
            width: 300,
            height: 200,
            child: Column(
              children: [
                Logo(),
                Text(
                  'Embarking on the forefront, PCBdesign crafts Printed Chip Boards and Integrated Chips, sculpting the essence of technological advancement',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ContactForm(),
        ],
      ),
    );
  }
}
