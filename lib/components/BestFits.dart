import 'package:flutter/material.dart';

class BestFits extends StatelessWidget {
  const BestFits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      height: 100,
      // width: double.infinity,
      margin: EdgeInsets.only(left: 15),
      child: ListView(scrollDirection: Axis.horizontal, children: [
        BestFitCard(
          companyName: "CodeGiraffe",
          jobTitle: "Full-Stack Web Developer",
        ),
        SizedBox(width: 10),
        BestFitCard(
          companyName: "KoperTech",
          jobTitle: "Software Developer",
        ),
        SizedBox(width: 10),
        BestFitCard(
          companyName: "BIG Data",
          jobTitle: "Data Scientist",
        ),
        SizedBox(width: 10),
        BestFitCard(
          companyName: "AU Tech",
          jobTitle: "Software Developer",
        ),
      ]),
    );
  }
}

class BestFitCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  const BestFitCard(
      {super.key, required this.companyName, required this.jobTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 180,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          width: 2,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 95),
        //     blurRadius: 38,
        //     color: Color.fromRGBO(0, 0, 0, 0.01),
        //   ),
        //   BoxShadow(
        //     offset: Offset(0, 53),
        //     blurRadius: 32,
        //     color: Color.fromRGBO(0, 0, 0, 0.05),
        //   ),
        //   BoxShadow(
        //     offset: Offset(0, 24),
        //     blurRadius: 24,
        //     color: Color.fromRGBO(0, 0, 0, 0.09),
        //   ),
        //   BoxShadow(
        //     offset: Offset(0, 6),
        //     blurRadius: 13,
        //     color: Color.fromRGBO(0, 0, 0, 0.1),
        //   ),
        //   BoxShadow(
        //     offset: Offset(0, 0),
        //     blurRadius: 0,
        //     color: Color.fromRGBO(0, 0, 0, 0.1),
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://www.dinitcs.com/wp-content/uploads/2021/01/dinit-fb-image.png",
                  width: 50,
                  height: 50,
                ),
              ),
              Text(jobTitle),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  companyName,
                  style: TextStyle(),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
