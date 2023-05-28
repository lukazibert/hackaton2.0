import 'package:flutter/material.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

import '../components/TopAppBar.dart';
import 'ScholarshipSuccesPage.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({super.key});

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
          child: Column(
            children: [
              Image.asset('lib/contracts/contract1.png'),
              SizedBox(height: 20),
              SignatureField(),
            ],
          ),
        ));
  }
}

class SignatureField extends StatefulWidget {
  @override
  _SignatureFieldState createState() => _SignatureFieldState();
}

class _SignatureFieldState extends State<SignatureField> {
  final GlobalKey<SignatureState> _signaturePadKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Signature(
            key: _signaturePadKey,
            // height: 200,
            // backgroundColor: Colors.white,
            // strokeColor: Colors.black,
            strokeWidth: 3,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async {
                _signaturePadKey.currentState?.clear();
                // Process the signature image as needed
              },
              child: Text('Reset Signature'),
            ),
            ElevatedButton(
              onPressed: () async {
                final signature =
                    await _signaturePadKey.currentState?.getData();
                // Process the signature image as needed
                // Inside the function where the contract is signed
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScholarshipSuccesPage()),
                );
              },
              child: Text('Sign Contract'),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
