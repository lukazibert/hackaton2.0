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
          companyName: "Outbrain",
          jobTitle: "Full-Stack Web Developer",
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdzD-Xcrqz67hWmyCOiB5f-mobZtaqZ-ZM1T8VWDajJA0tii-oEgAsBPGFiomi4XddA7U&usqp=CAU",
        ),
        SizedBox(width: 10),
        BestFitCard(
          companyName: "Epilog",
          jobTitle: "Software Developer",
          url:
              "https://media.licdn.com/dms/image/C4D0BAQGiQn7HG5k41g/company-logo_200_200/0/1610351112966?e=2147483647&v=beta&t=D-S_6kFeX6StUkLYafqueAxpkImK8pXTTIeWbjBluNw",
        ),
        SizedBox(width: 10),
        BestFitCard(
          companyName: "Dinit",
          jobTitle: "Software engenere",
          url:
              "https://www.dinitcs.com/wp-content/uploads/2021/01/dinit-fb-image.png",
        ),
        SizedBox(width: 10),
        // BestFitCard(
        //   companyName: "AU Tech",
        //   jobTitle: "Software Developer",
        //   url: "https://i.imgur.com/3XzQY5p.png",
        // ),
      ]),
    );
  }
}

class BestFitCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String url;
  const BestFitCard(
      {super.key,
      required this.companyName,
      required this.jobTitle,
      required this.url});

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
                  url,
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
