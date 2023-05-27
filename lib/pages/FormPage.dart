import 'package:flutter/material.dart';

import '../components/TopAppBar.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

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
        child: PageView(children: <Widget>[]),
      ),
    );
  }
}
