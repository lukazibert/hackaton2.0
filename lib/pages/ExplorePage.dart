import 'package:flutter/material.dart';
import 'package:hackaton/pages/JobDetailView.dart';

import '../components/BestFits.dart';
import '../components/CustomBottomNavigationBar.dart';
import '../components/CustomSearchBar.dart';
import '../components/TopAppBar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

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
          height: double.infinity,
          child: ListView(children: <Widget>[
            SizedBox(height: 15), // Add 20px of space (height
            CustomSearchBar(),
            SizedBox(height: 15), // Add 20px of space (height
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Recommended",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 15),
            BestFits(),
            SizedBox(height: 15), // Add 20px of space (height
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Opportunities",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JobDetail()),
                );
              },
              child: StipendCard(
                url:
                    "https://gamanza.com/wp-content/uploads/2019/07/Gamanza-black-vertical-bold.png",
                companyName: "Gamanza",
                compensation: 100,
                desciption:
                    "The Gamanza Scholarship offers aspiring game engine developers the opportunity to pursue their passion and gain valuable experience in the gaming industry. This scholarship program aims to support talented individuals by providing financial assistance and a hands-on learning experience",
              ),
            ),
            SizedBox(height: 30),
            StipendCard(
              url:
                  "https://www.dinitcs.com/wp-content/uploads/2021/01/dinit-fb-image.png",
              companyName: "Dinit",
              compensation: 100,
              desciption:
                  "The Dinit Scholarship offers aspiring game engine developers the opportunity to pursue their passion and gain valuable experience in the gaming industry. This scholarship program aims to support talented individuals by providing financial assistance and a hands-on learning experience",
            ),
            SizedBox(height: 30),
            StipendCard(
              url:
                  "http://www.projektip.si/wp-content/uploads/2017/05/logo2.jpg",
              companyName: "poject ip",
              compensation: 150,
              desciption:
                  "Project ip is a cutting-edge technology company that specializes in providing innovative solutions for businesses seeking to thrive in the digital era. We leverage the power of advanced technologies such as artificial intelligence, machine learning, and data analytics to help our clients gain a competitive edge in their respective industries",
            ),
            SizedBox(height: 30),
            StipendCard(
              url: "https://www.epilog.net/images/logos/logo.png",
              companyName: "Innovix",
              compensation: 150,
              desciption:
                  "Epilog is a cutting-edge technology company that specializes in providing innovative solutions for businesses seeking to thrive in the digital era. We leverage the power of advanced technologies such as artificial intelligence, machine learning, and data analytics to help our clients gain a competitive edge in their respective industries",
            ),
          ]),
        ),
        bottomNavigationBar: CustomBottomNavigationBar());
  }
}

class StipendCard extends StatelessWidget {
  final compensation;
  final companyName;
  final desciption;
  final url;

  StipendCard(
      {super.key,
      required this.compensation,
      required this.companyName,
      required this.desciption,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  url,
                  width: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          companyName,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          compensation.toString() + "€/month",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.bookmark),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(desciption),
          )
        ],
      ),
    );
  }
}
