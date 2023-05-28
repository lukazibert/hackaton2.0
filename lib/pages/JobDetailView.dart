import 'package:flutter/material.dart';
import 'package:hackaton/components/CustomBottomNavigationBar.dart';

import '../components/TopAppBar.dart';
import 'TermsAndConditionsPage.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({super.key});

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
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: ListView(
          children: [
            Image.network(
                "https://gamanza.com/wp-content/uploads/2019/07/Gamanza-black-vertical-bold.png",
                height: 200),
            SizedBox(height: 20),
            Center(
                child: Text("Game Engine developer",
                    style: TextStyle(fontSize: 30))),
            SizedBox(height: 20),
            Text("We are looking to sponsor a game engine developer",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 20),
            Text(
              'Scholarship Description: Gamanza Game Engine Developer Scholarship',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'The Gamanza Game Engine Developer Scholarship is designed to support and recognize outstanding students pursuing a career in game engine development. This scholarship program aims to provide financial assistance and empower deserving individuals to excel in the field of game development.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Eligibility Criteria:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '- Applicants must be currently enrolled as full-time students at an accredited educational institution.',
            ),
            Text(
              '- The scholarship is open to students pursuing a degree or specialization in game engine development or related fields.',
            ),
            Text(
              '- Applicants must meet the minimum GPA requirement of [Minimum GPA].',
            ),
            // Add any additional eligibility criteria specific to the scholarship
            SizedBox(height: 16.0),
            Text(
              'Scholarship Benefits:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '- The selected recipient(s) will receive a monetary award of [Scholarship Amount].',
            ),
            Text(
              '- The scholarship award may be used to cover tuition fees, educational expenses, or other relevant costs associated with their studies.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Application Process:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1. Interested candidates must complete the online scholarship application form available on the Gamanza website.',
            ),
            Text(
              '2. The application form requires personal information, academic background, and supporting documents, including [List the required documents, such as transcripts, recommendation letters, essays, etc.].',
            ),
            Text(
              '3. The application deadline is [Deadline Date]. Late submissions will not be considered.',
            ),
            Text(
              '4. The scholarship committee will review all received applications and select the most deserving candidate(s) based on the eligibility criteria, academic achievements, extracurricular activities, and other relevant factors.',
            ),
            Text(
              '5. Shortlisted candidates may be contacted for an interview or additional documentation, if necessary.',
            ),
            Text(
              '6. The final scholarship recipient(s) will be notified directly via email or phone.',
            ),
            SizedBox(height: 16.0),

            // Add any additional terms and conditions specific to the scholarship
            SizedBox(height: 20),
            // button to applie
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermsAndConditionsPage()),
                  );
                },
                child: Text("Apply now"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
