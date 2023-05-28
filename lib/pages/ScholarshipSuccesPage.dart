import 'package:flutter/material.dart';
import 'package:hackaton/pages/ExplorePage.dart';
import 'package:hackaton/pages/ScholarshipDashboardPage.dart';

import 'JobDetailView.dart';

class ScholarshipSuccesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have successfully signed the contract.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Redirect to another page or perform any other action
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ScholarshipDashboardPage(status: "In progress")),
                );
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
