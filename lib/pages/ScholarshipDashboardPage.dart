import 'package:flutter/material.dart';
import 'package:hackaton/components/CustomBottomNavigationBar.dart';
import 'package:hackaton/components/TopAppBar.dart';

import 'ContractPage.dart';

// import 'ContractPage.dart';

class ScholarshipDashboardPage extends StatefulWidget {
  final String status;
  @override
  ScholarshipDashboardPage({super.key, required this.status});

  State<ScholarshipDashboardPage> createState() =>
      _ScholarshipDashboardPageState();
}

class _ScholarshipDashboardPageState extends State<ScholarshipDashboardPage> {
  late String status;

  @override
  void initState() {
    // Change state of status to Approved after 5 seconds
    status = widget.status;
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        status = "Approved";
      });
    });

    super.initState();
  }

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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://gamanza.com/wp-content/uploads/2019/07/Gamanza-black-vertical-bold.png",
                  height: 100,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gamanza Group AG", style: TextStyle(fontSize: 20)),
                    Text("Software Engineer", style: TextStyle(fontSize: 15)),
                    Text("Zurich, Switzerland", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 10),
                    Text("Applied on 12/12/2020",
                        style: TextStyle(fontSize: 15, color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Status: ", style: TextStyle(fontSize: 20)),
                Text(
                  status,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:
                          status == "Processing" ? Colors.blue : Colors.green),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Scholarship Description",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'The Gamanza Game Engine Developer Scholarship is designed to support and recognize outstanding students pursuing a career in game engine development. This scholarship program aims to provide financial assistance and empower deserving individuals to excel in the field of game development.',
            ),
            SizedBox(height: 20),
            Text("Company Contact Information:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Gamanza Group AG"),
            Text("Schaffhauserstrasse 550"),
            Text("8052 Zurich, Switzerland"),
            Text("Phone: +41 44 500 40 00"),
            Text("Email: example@email.com"),
            SizedBox(height: 20),
            Text("Message Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              // width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(
                //   color: Colors.grey,
                //   width: 1,
                // ),
                color: Colors.grey[300],
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Hello we are very happy that you applied to our scholarship program. Please wait while we prpcess your aplications. We will contat you shortly.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // SizedBox(height: 10),
                    Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                ),
                              ),
                            ),
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Container(
                child: status == "Approved"
                    ? Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContractPage()),
                            );
                          },
                          child: Text("Sign Contract"),
                        ),
                      )
                    : Container())
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
