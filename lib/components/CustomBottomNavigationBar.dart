import 'package:flutter/material.dart';
import 'package:hackaton/pages/AppliedJobsPage.dart';
import 'package:hackaton/pages/ExplorePage.dart';

import '../pages/FormPage.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -22),
            blurRadius: 9,
            color: Color.fromRGBO(0, 0, 0, 0.01),
          ),
          BoxShadow(
            offset: Offset(0, -13),
            blurRadius: 8,
            color: Color.fromRGBO(0, 0, 0, 0.03),
          ),
          BoxShadow(
            offset: Offset(0, -6),
            blurRadius: 6,
            color: Color.fromRGBO(0, 0, 0, 0.04),
          ),
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 3,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
        ],
      ),
      width: double.infinity,
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: const Icon(
                Icons.list_rounded,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppliedJobsPage()),
                );
              }),
          IconButton(
              icon: const Icon(
                Icons.home_rounded,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExplorePage()),
                );
              }),
          IconButton(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              })
        ]),
      ),
    );
  }
}
