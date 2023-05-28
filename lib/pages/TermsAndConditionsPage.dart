// import 'package:flutter/material.dart';

// class TermsAndConditionsPage extends StatelessWidget {
//   const TermsAndConditionsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

import 'package:flutter/material.dart';
import 'package:hackaton/pages/AppliedJobsPage.dart';

import '../components/TopAppBar.dart';

class TermsAndConditionsPage extends StatefulWidget {
  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  bool _accepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: TopAppBar()),
        preferredSize: Size.fromHeight(100),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '1. Eligibility:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1.1 You must be a student or a company representative to use the App.',
            ),
            Text(
              '1.2 Students must be enrolled in an accredited educational institution.',
            ),
            Text(
              '1.3 Companies must be legally registered entities.',
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Account Creation:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '2.1 You are required to create an account to use the App.',
            ),
            Text(
              '2.2 You agree to provide accurate and complete information during the registration process.',
            ),
            Text(
              '2.3 You are solely responsible for maintaining the confidentiality of your account credentials.',
            ),
            Text(
              '2.4 You must promptly notify the Company of any unauthorized use of your account.',
            ),
            SizedBox(height: 16.0),
            Text(
              '3. Scholarship Listings:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '3.1 The App allows companies to post scholarship opportunities for students.',
            ),
            Text(
              '3.2 The Company does not endorse or guarantee the accuracy, quality, or legitimacy of the scholarships listed on the App.',
            ),
            Text(
              '3.3 It is your responsibility to verify the details, eligibility criteria, and terms of each scholarship before applying.',
            ),
            Text(
              '3.4 The Company reserves the right to remove or modify any scholarship listing at its discretion.',
            ),
            SizedBox(height: 16.0),
            Text(
              '4. Application Process:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '4.1 Students may apply for scholarships listed on the App.',
            ),
            Text(
              '4.2 The Company is not responsible for the selection process or final decision of the participating companies.',
            ),
            Text(
              '4.3 Companies have the sole discretion to select and communicate with the chosen student(s).',
            ),
            Text(
              '4.4 The Company is not liable for any actions, omissions, or agreements between students and companies.',
            ),
            SizedBox(height: 16.0),
            Text(
              '5. Summer Work and Compensation:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '5.1 If selected for a scholarship, you may be required to work at the sponsoring company during the summer break.',
            ),
            Text(
              '5.2 The terms of the summer work, including compensation, hours, and responsibilities, will be determined solely by the sponsoring company.',
            ),
            Text(
              '5.3 The Company is not responsible for any issues or disputes that may arise during the summer work period.',
            ),
            SizedBox(height: 16.0),
            Text(
              '6. Intellectual Property:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '6.1 All content and materials available on the App, including text, graphics, logos, and software, are the property of the Company or its licensors.',
            ),
            Text(
              '6.2 You may not copy, modify, distribute, or reproduce any content from the App without the Company\'s prior written consent.',
            ),
            SizedBox(height: 16.0),
            Text(
              '7. Privacy:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '7.1 The Company collects and processes personal data in accordance with its Privacy Policy.',
            ),
            Text(
              '7.2 By using the App, you consent to the Company\'s collection, use, and disclosure of your personal information as described in the Privacy Policy.',
            ),
            SizedBox(height: 16.0),
            Text(
              '8. Termination:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '8.1 The Company reserves the right to suspend or terminate your access to the App at any time, without prior notice or liability.',
            ),
            Text(
              '8.2 Upon termination, you must cease all use of the App and delete any copies of the App from your devices.',
            ),
            SizedBox(height: 16.0),
            Text(
              '9. Disclaimer of Warranties:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '9.1 The App is provided on an "as-is" and "as available" basis, without warranties of any kind.',
            ),
            Text(
              '9.2 The Company does not warrant that the App will be error-free, uninterrupted, or secure.',
            ),
            SizedBox(height: 16.0),
            Text(
              '10. Limitation of Liability:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '10.1 To the maximum extent permitted by law, the Company shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising out of or relating to the use or inability to use the App.',
            ),
            SizedBox(height: 16.0),
            Text(
              '11. Governing Law:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '11.1 This Agreement shall be governed by and construed in accordance with the laws of [your jurisdiction].',
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                    value: _accepted,
                    onChanged: (v) => setState(() => _accepted = !_accepted)),
                Text("I have read and agree to the Terms of Service."),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: _accepted ? Colors.blue : Colors.grey,
                  onPrimary: Colors.white,
                ),
                onPressed: _accepted
                    ? () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppliedJobsPage()),
                        )
                    : () {},
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
