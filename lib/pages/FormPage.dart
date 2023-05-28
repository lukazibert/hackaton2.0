import 'package:flutter/material.dart';
import 'package:hackaton/components/CustomBottomNavigationBar.dart';
import 'package:hackaton/pages/ProfilePage.dart';

import '../components/TopAppBar.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});

  final PageController pageController = PageController(initialPage: 0);

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
        child: PageView(controller: pageController, children: <Widget>[
          Question1(pageController: pageController),
          Question2(pageController: pageController),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class Question1 extends StatelessWidget {
  const Question1({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: 20),
        Text(
          "What field of work are you interested in?",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              Pill(text: "Programming"),
              Pill(text: "Design"),
              Pill(text: "Marketing"),
              Pill(text: "Business"),
              Pill(text: "Finance"),
              Pill(text: "Software Development"),
              Pill(text: "Graphic Design"),
              Pill(text: "Data Analytics"),
              Pill(text: "Cybersecurity"),
              Pill(text: "Innovation Consulting"),
              Pill(text: "Cloud Computing"),
              Pill(text: "Robotics"),
              Pill(text: "Technology Consulting"),
              Pill(text: "Artificial Intelligence"),
              Pill(text: "Web Development"),
              Pill(text: "Digital Marketing"),
              Pill(text: "Startup Incubator"),
              Pill(text: "Mobile App Development"),
              Pill(text: "Tech Education and Training"),
              Pill(text: "Cryptocurrency and Blockchain"),
            ],
          ),
        ),
        SizedBox(height: 20),
        //Button to animate to next page
        ElevatedButton(
          onPressed: () {
            pageController.nextPage(
                duration: Duration(milliseconds: 200),
                curve: Curves.linearToEaseOut);
          },
          child: Text('Next'),
        ),
      ]),
    );
  }
}

class Question2 extends StatelessWidget {
  const Question2({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Could you please provide us with your current GPA/grades in the last semester.",
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'File Input',
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        //Button to animate to next page
        ElevatedButton(
          onPressed: () {
            // pageController.nextPage(
            //     duration: Duration(milliseconds: 200),
            //     curve: Curves.linearToEaseOut);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: Text('Next'),
        ),
      ]),
    );
  }
}

class Pill extends StatefulWidget {
  final String text;
  Pill({
    super.key,
    required this.text,
  });

  @override
  State<Pill> createState() => _PillState();
}

class _PillState extends State<Pill> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
          widget.text,
          style: TextStyle(color: selected ? Colors.white : Colors.black),
        ),
        decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.white,
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
