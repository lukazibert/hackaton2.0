import 'package:flutter/material.dart';
import 'package:hackaton/components/CustomBottomNavigationBar.dart';
import 'package:hackaton/pages/ScholarshipDashboardPage.dart';

import '../components/TopAppBar.dart';

class AppliedJobsPage extends StatelessWidget {
  const AppliedJobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: TopAppBar()),
        preferredSize: Size.fromHeight(100),
      ),
      body: ListView(
        children: [
          Center(
              child:
                  Text("Applied Scholarships", style: TextStyle(fontSize: 25))),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScholarshipDashboardPage(
                          status: "Processing",
                        )),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 95),
                    blurRadius: 38,
                    color: Color.fromRGBO(0, 0, 0, 0.01),
                  ),
                  BoxShadow(
                    offset: Offset(0, 53),
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
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.network(
                      "https://gamanza.com/wp-content/uploads/2019/07/Gamanza-black-vertical-bold.png",
                      height: 100),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gamanza Group AG", style: TextStyle(fontSize: 20)),
                      Text("Software Engineer", style: TextStyle(fontSize: 15)),
                      Text("Zurich, Switzerland",
                          style: TextStyle(fontSize: 15)),
                      SizedBox(height: 10),
                      Text("Applied on 12/12/2020",
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
