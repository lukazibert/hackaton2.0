import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 50),
              blurRadius: 38,
              color: Color.fromRGBO(0, 0, 0, 0.01),
            ),
            BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 32,
              color: Color.fromRGBO(0, 0, 0, 0.05),
            ),
            BoxShadow(
              offset: Offset(0, 24),
              blurRadius: 24,
              color: Color.fromRGBO(0, 0, 0, 0.09),
            ),
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 13,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 0,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            ),
          ],
        ),
        alignment: Alignment.centerRight,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
            IconButton(
              color: Colors.grey,
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ));
  }
}
