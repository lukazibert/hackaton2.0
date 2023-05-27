import 'package:flutter/material.dart';
import 'package:gooback/pages/FormPage.dart';

import 'components/BestFits.dart';
import 'components/CustomBottomNavigationBar.dart';
import 'components/CustomSearchBar.dart';
import 'components/TopAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // This will dismiss the keyboard when the user taps outside the TextField
          FocusScope.of(context).unfocus();
        },
        child:
            // Scaffold(
            //     appBar: PreferredSize(
            //       child: Padding(
            //           padding:
            //               EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            //           child: TopAppBar()),
            //       preferredSize: Size.fromHeight(100),
            //     ),
            //     body: Container(
            //       width: double.infinity,
            //       height: double.infinity,
            //       child: ListView(children: <Widget>[
            //         SizedBox(height: 15), // Add 20px of space (height
            //         CustomSearchBar(),
            //         SizedBox(height: 15), // Add 20px of space (height
            //         Container(
            //           margin: EdgeInsets.only(left: 15),
            //           child: Text(
            //             "Recommended",
            //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            //           ),
            //         ),
            //         SizedBox(height: 15),
            //         BestFits(),
            //         SizedBox(height: 15), // Add 20px of space (height
            //         Container(
            //           margin: EdgeInsets.only(left: 15),
            //           child: Text(
            //             "Opportunities",
            //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            //           ),
            //         ),
            //         SizedBox(height: 15),
            //         StipendCard(
            //           url:
            //               "https://gamanza.com/wp-content/uploads/2019/07/Gamanza-black-vertical-bold.png",
            //           companyName: "TechVantage",
            //           compensation: 100,
            //           desciption:
            //               "Innovix is a dynamic tech company that thrives on pushing the boundaries of innovation. We are driven by a passion for creating groundbreaking technologies that disrupt industries and revolutionize the way people live and work. From developing cutting-edge software applications to exploring emerging technologies like blockchain and Internet of Things (IoT), Innovix is at the forefront of driving technological progress and empowering businesses to embrace the future.",
            //         ),
            //         SizedBox(height: 30),
            //         StipendCard(
            //           url:
            //               "http://www.projektip.si/wp-content/uploads/2017/05/logo2.jpg",
            //           companyName: "Innovix",
            //           compensation: 150,
            //           desciption:
            //               "TechVantage is a cutting-edge technology company that specializes in providing innovative solutions for businesses seeking to thrive in the digital era. We leverage the power of advanced technologies such as artificial intelligence, machine learning, and data analytics to help our clients gain a competitive edge in their respective industries",
            //         ),
            //         SizedBox(height: 30),
            //         StipendCard(
            //           url: "https://www.epilog.net/images/logos/logo.png",
            //           companyName: "Innovix",
            //           compensation: 150,
            //           desciption:
            //               "TechVantage is a cutting-edge technology company that specializes in providing innovative solutions for businesses seeking to thrive in the digital era. We leverage the power of advanced technologies such as artificial intelligence, machine learning, and data analytics to help our clients gain a competitive edge in their respective industries",
            //         ),
            //       ]),
            //     ),
            //     bottomNavigationBar: CustomBottomNavigationBar()),
            // );
            FormPage());
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
                          compensation.toString() + " €/month",
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
