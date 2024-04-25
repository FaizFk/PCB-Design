import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pcb_design/components/Logo.dart';
import 'package:pcb_design/components/NavLink.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

String activeTab = 'Home';

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Flex(
      direction: width<700?Axis.vertical:Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Logo(),
        ),
        Flex(
          direction: width<700?Axis.vertical:Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 'Home';
                });
              },
              child: NavLink(
                text: 'Home',
                isActive: activeTab == 'Home',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 'About Us';
                });
              },
              child: NavLink(
                text: 'About Us',
                isActive: activeTab == 'About Us',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 'Services';
                });
              },
              child: NavLink(
                text: 'Services',
                isActive: activeTab == 'Services',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = 'Auth';
                });
              },
              child: NavLink(
                text: 'LogIn | SignUp',
                isActive: activeTab == 'Auth',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
