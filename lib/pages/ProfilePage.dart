import 'package:flutter/material.dart';
import 'package:hackaton/components/CustomBottomNavigationBar.dart';

import '../components/TopAppBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: TopAppBar()),
        preferredSize: Size.fromHeight(100),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              SizedBox(height: 20),
              Text(
                "John Doe",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20),
              Text("Collage: University of California, Berkeley"),
              SizedBox(height: 20),
              Text("Major: Computer Science"),
            ]),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
